import { IotaCredentials } from '@affinidi-tdk/iota-utils'
import { toUtf8 } from '@aws-sdk/util-utf8-browser'
import { AwsCredentialIdentity } from '@smithy/types'
import { iot, mqtt5 } from 'aws-iot-device-sdk-v2/dist/browser'
import * as jose from 'jose'
import { v4 as uuidv4 } from 'uuid'
import {
  PrepareRequestEvent,
  SignedRequestEventSchema,
} from '../validators/events'

const DEFAULT_IOT_ENDPOINT =
  'a3sq1vuw0cw9an-ats.iot.ap-southeast-1.amazonaws.com'
const DEFAULT_REGION = 'ap-southeast-1'
const DEFAULT_API_GW = 'https://apse1.dev.api.affinidi.io/ais'

export type ChannelProviderParams = {
  credentials: IotaCredentials
  iotEndpoint?: string
  region?: string
  apiGW?: string
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

// TODO Error type
export type IotaChannelRequestCallbackFunction = (
  err: Error | null,
  data: IotaChannelRequest | null,
) => void

export class ChannelProvider {
  iotEndpoint: string
  region: string
  apiGW: string
  iotaConfigBuilder?: iot.AwsIotMqtt5ClientConfigBuilder
  iotaClient?: mqtt5.Mqtt5Client
  topicName?: string

  constructor(params?: ChannelProviderParams) {
    this.iotEndpoint = params?.iotEndpoint ?? DEFAULT_IOT_ENDPOINT
    this.region = params?.region ?? DEFAULT_REGION
    this.apiGW = params?.apiGW ?? DEFAULT_API_GW
  }

  getClient(): mqtt5.Mqtt5Client {
    // TODO check if we need to restart the mqtt client
    if (!this.iotaClient) {
      throw new Error('Iota client not stated')
    }
    return this.iotaClient
  }

  getTopicName(): string {
    // TODO check if we need to restart the mqtt client
    if (!this.topicName) {
      throw new Error('Not authenticated with Affinidi Iota Framework')
    }
    return this.topicName
  }

  async initialize(credentials: IotaCredentials) {
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
      credentials.iotClientId,
    )
    this.topicName = `iota/v1/${credentials.iotClientId}`
    this.iotaClient = await this.startClient()
    console.log('Initialized Iota channel')
  }

  private async startClient(): Promise<mqtt5.Mqtt5Client> {
    if (!this.iotaConfigBuilder || !this.topicName) {
      throw new Error('Not authenticated with Affinidi Iota Framework')
    }
    if (!this.iotaClient) {
      console.log('Client not yet started. Starting...')
      this.iotaClient = await this.startMqttClient(this.iotaConfigBuilder)
      await this.subscribeToTopic(this.iotaClient, this.topicName)
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
    const config = iotaConfigBuilder.build()
    const client = new mqtt5.Mqtt5Client(config)

    // TODO Add any required handlers

    client.start()
    console.log('Client started')

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
    console.log(`Subscribed to ${topicName}...`)
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
    await client.publish(publishPacket)
    console.log('prepareRequest:', eventPayload)

    return new Promise((resolve, reject) => {
      client.on(
        'messageReceived',
        (messageReceivedEvent: mqtt5.MessageReceivedEvent): void => {
          if (messageReceivedEvent.message.payload) {
            const raw_data = toUtf8(
              messageReceivedEvent.message.payload as Buffer,
            )
            try {
              const event = JSON.parse(raw_data)
              if (
                event.eventType === 'signedRequest' &&
                correlationId === event.correlationId
              ) {
                console.log('signedRequest:', event)
                // TODO handle Zod errors gracefully
                const signedRequest = SignedRequestEventSchema.parse(event)
                const claims = jose.decodeJwt(signedRequest.data.jwt)
                // TODO Zod validate JWT
                if (!claims.client_id && typeof claims.client_id === 'string') {
                  reject(new Error('Unexpected request claims received'))
                }
                const client_id = claims.client_id as string
                const request: IotaChannelRequest = {
                  correlationId: signedRequest.correlationId,
                  payload: {
                    request: signedRequest.data.jwt,
                    client_id,
                  },
                }

                resolve(request)
              }
            } catch (error) {
              console.log(error)
              reject(error)
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