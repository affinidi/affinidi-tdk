import { toUtf8 } from '@aws-sdk/util-utf8-browser'
import { AwsCredentialIdentity } from '@smithy/types'
import { iot, mqtt5 } from 'aws-iot-device-sdk-v2/dist/browser'
import * as jose from 'jose'
import { v4 as uuidv4 } from 'uuid'
import {
  EventTypes,
  PrepareRequestEvent,
  SignedRequestEvent,
  signedRequestEventSchema,
  SignedRequestJWT,
  signedRequestJWTSchema,
} from '../validators/events'
import {
  InternalErrorCode,
  throwEventError,
  IotaError,
  newUnexpectedError,
  IotaErrorCode,
  newIotaError,
} from '../validators/error'
import { EnvironmentUtils, Logger } from '@affinidi-tdk/common/helpers'

export interface IotaCredentials {
  readonly credentials: Credentials
  readonly connectionClientId: string
}

export interface Credentials {
  readonly accessKeyId?: string
  readonly secretKey?: string
  readonly sessionToken?: string
  readonly expiration?: Date
}

export type ChannelProviderParams = {
  credentials: IotaCredentials
  iotEndpoint?: string
  region?: string
}

export type PrepareRequestParams = {
  queryId: string
  correlationId?: string
  audience?: string
}

export type IotaChannelRequest = {
  correlationId: string
  payload: {
    request: string
    client_id: string
  }
}

export type IotaChannelRequestCallbackFunction = (
  err: IotaError | null,
  data: IotaChannelRequest | null,
) => void

export class ChannelProvider {
  iotEndpoint: string
  region: string
  iotaConfigBuilder?: iot.AwsIotMqtt5ClientConfigBuilder
  iotaClient?: mqtt5.Mqtt5Client
  topicName?: string

  constructor(params?: ChannelProviderParams) {
    this.iotEndpoint = params?.iotEndpoint ?? EnvironmentUtils.fetchIotUrl()
    this.region = params?.region ?? EnvironmentUtils.fetchRegion()
  }

  getClient(): mqtt5.Mqtt5Client {
    if (!this.iotaClient) {
      throw newIotaError(IotaErrorCode.IOTA_CLIENT_NOT_STARTED)
    }
    return this.iotaClient
  }

  getTopicName(): string {
    if (!this.topicName) {
      throw newIotaError(IotaErrorCode.NOT_AUTHENTICATED)
    }
    return this.topicName
  }

  async initialize(credentials: IotaCredentials) {
    Logger.debug('Initializing Iota channel')
    const credentialsProvider = new CustomCredentialsProvider(
      {
        accessKeyId: credentials.credentials.accessKeyId!,
        secretAccessKey: credentials.credentials.secretKey!,
        sessionToken: credentials.credentials.sessionToken!,
      },
      this.region,
    )
    this.iotaConfigBuilder = await this.createConfigBuilder(
      credentialsProvider,
      credentials.connectionClientId,
    )
    this.topicName = `iota/v1/${credentials.connectionClientId}`
    this.iotaClient = await this.startClient()
  }

  private async startClient(): Promise<mqtt5.Mqtt5Client> {
    if (!this.iotaConfigBuilder || !this.topicName) {
      throw newIotaError(IotaErrorCode.NOT_AUTHENTICATED)
    }
    if (!this.iotaClient) {
      Logger.debug('Mqtt client has not been started yet')
      try {
        this.iotaClient = await this.startMqttClient(this.iotaConfigBuilder)
        await this.subscribeToTopic(this.iotaClient, this.topicName)
      } catch {
        throw newIotaError(
          IotaErrorCode.UNABLE_TO_CONNECT_WITH_PROVIDED_CREDENTIALS,
        )
      }
    }
    return this.iotaClient
  }

  private async createConfigBuilder(
    credentialsProvider: CustomCredentialsProvider,
    iotClientId: string,
  ): Promise<iot.AwsIotMqtt5ClientConfigBuilder> {
    const configBuilder =
      iot.AwsIotMqtt5ClientConfigBuilder.newWebsocketMqttBuilderWithSigv4Auth(
        this.iotEndpoint,
        {
          region: this.region,
          credentialsProvider: credentialsProvider,
        },
      )

    configBuilder
      .withSessionBehavior(mqtt5.ClientSessionBehavior.RejoinAlways)
      .withConnectProperties({
        clientId: iotClientId,
        keepAliveIntervalSeconds: 60,
        sessionExpiryIntervalSeconds: 60,
      })

    return configBuilder
  }

  private async startMqttClient(
    iotaConfigBuilder: iot.AwsIotMqtt5ClientConfigBuilder,
  ): Promise<mqtt5.Mqtt5Client> {
    Logger.debug('Starting mqtt client')
    const config = iotaConfigBuilder.build()
    const client = new mqtt5.Mqtt5Client(config)
    client.start()
    Logger.debug('Mqtt client started')
    return client
  }

  private async subscribeToTopic(client: mqtt5.Mqtt5Client, topicName: string) {
    const packet: mqtt5.SubscribePacket = {
      subscriptions: [
        {
          topicFilter: topicName,
          qos: mqtt5.QoS.AtLeastOnce,
        },
      ],
    }
    await client.subscribe(packet)
    Logger.debug('Subscribed to topic', topicName)
  }

  private getRequest(event: SignedRequestEvent) {
    let signedRequest: SignedRequestEvent, signedRequestJWT: SignedRequestJWT
    try {
      signedRequest = signedRequestEventSchema.parse(event)
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.SIGNED_REQUEST_EVENT,
        event.correlationId,
      )
    }
    try {
      const claims = jose.decodeJwt(signedRequest.data.jwt)
      signedRequestJWT = signedRequestJWTSchema.parse(claims)
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.SIGNED_REQUEST_JWT,
        event.correlationId,
      )
    }
    const request: IotaChannelRequest = {
      correlationId: signedRequest.correlationId,
      payload: {
        request: signedRequest.data.jwt,
        client_id: signedRequestJWT.client_id,
      },
    }
    return request
  }

  async prepareRequest(
    params: PrepareRequestParams,
  ): Promise<IotaChannelRequest> {
    const client = this.getClient()
    const topicName = this.getTopicName()
    const correlationId = params.correlationId ?? uuidv4()

    const eventPayload: PrepareRequestEvent = {
      eventType: 'prepareRequest',
      queryId: params.queryId,
      correlationId,
      ...(params.audience ? { audience: params.audience } : {}),
    }

    const publishPacket: mqtt5.PublishPacket = {
      topicName: topicName,
      payload: eventPayload,
      qos: mqtt5.QoS.AtLeastOnce,
    }

    Logger.debug('Publishing prepare request event', publishPacket)
    await client.publish(publishPacket)
    Logger.debug('Published. Listening for response...')

    return new Promise((resolve, reject) => {
      client.on(
        'messageReceived',
        (messageReceivedEvent: mqtt5.MessageReceivedEvent): void => {
          if (messageReceivedEvent.message.payload) {
            const raw_data = toUtf8(
              messageReceivedEvent.message.payload as Buffer,
            )
            try {
              Logger.debug('Event received', raw_data)
              const event = JSON.parse(raw_data)
              if (correlationId !== event.correlationId) {
                return
              }
              if (event.eventType === EventTypes.SignedRequest) {
                const request = this.getRequest(event)
                Logger.debug('Signed request received', request)
                resolve(request)
              } else if (event.eventType === EventTypes.Error) {
                throwEventError(event)
              }
            } catch (e) {
              Logger.debug('Error processing event data')
              reject(e)
            }
          }
        },
      )
    })
  }

  prepareRequestWithCallback(
    params: PrepareRequestParams,
    callback: IotaChannelRequestCallbackFunction,
  ) {
    this.prepareRequest(params)
      .then((request) => callback(null, request))
      .catch((error) => callback(error, null))
  }
}

class CustomCredentialsProvider {
  private awsCredentialIdentity: AwsCredentialIdentity
  private region: string

  constructor(awsCredentialIdentity: AwsCredentialIdentity, region: string) {
    this.awsCredentialIdentity = awsCredentialIdentity
    this.region = region
  }

  getCredentials() {
    return {
      aws_region: this.region,
      aws_access_id: this.awsCredentialIdentity.accessKeyId,
      aws_secret_key: this.awsCredentialIdentity.secretAccessKey,
      aws_sts_token: this.awsCredentialIdentity.sessionToken,
    }
  }

  async refreshCredentials(): Promise<void> {
    // TODO
    return Promise.resolve()
  }
}
