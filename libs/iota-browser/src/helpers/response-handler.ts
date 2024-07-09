import { toUtf8 } from '@aws-sdk/util-utf8-browser'
import { mqtt5 } from 'aws-iot-device-sdk-v2/dist/browser'
import {
  EventTypes,
  responseCallbackEventSchema,
  ResponseCallbackEvent,
} from '../validators/events'
import { ChannelProvider } from './channel-provider'
import {
  InternalErrorCode,
  throwEventError,
  IotaError,
  newUnexpectedError,
} from '../validators/error'
import { Logger } from '@affinidi-tdk/common/helpers'
import {
  PresentationSubmission,
  VerifiablePresentation,
  presentationSubmissionSchema,
  verifiablePresentationSchema,
} from '../validators/ssi'

export class IotaResponse {
  correlationId: string
  verifiablePresentation: VerifiablePresentation
  presentationSubmission: PresentationSubmission
  constructor(
    correlationId: string,
    verifiablePresentation: VerifiablePresentation,
    presentationSubmission: PresentationSubmission,
  ) {
    this.correlationId = correlationId
    this.verifiablePresentation = verifiablePresentation
    this.presentationSubmission = presentationSubmission
  }
}

export type IotaResponseCallbackFunction = (
  err: IotaError | null,
  data: IotaResponse | null,
) => void

export class ResponseHandler {
  channelProvider: ChannelProvider
  constructor(channelProvider: ChannelProvider) {
    this.channelProvider = channelProvider
  }

  private getResponseHandler(event: ResponseCallbackEvent) {
    let responseCallback: ResponseCallbackEvent
    let verifiablePresentation: VerifiablePresentation
    let presentationSubmission: PresentationSubmission
    try {
      responseCallback = responseCallbackEventSchema.parse(event)
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.RESPONSE_CALLBACK_EVENT,
        event.correlationId,
      )
    }
    try {
      const vpJson = JSON.parse(responseCallback.vpToken)
      verifiablePresentation = verifiablePresentationSchema.parse(vpJson)
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.PARSING_VERIFIABLE_PRESENTATION,
        event.correlationId,
      )
    }
    try {
      const presentationSubmissionJson = JSON.parse(
        responseCallback.presentationSubmission,
      )
      presentationSubmission = presentationSubmissionSchema.parse(
        presentationSubmissionJson,
      )
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.PARSING_PRESENTATION_SUBMISSION,
        event.correlationId,
      )
    }
    const response = new IotaResponse(
      responseCallback.correlationId,
      verifiablePresentation,
      presentationSubmission,
    )

    return response
  }

  async getResponse(correlationId: string): Promise<IotaResponse> {
    const client = this.channelProvider.getClient()
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
              if (correlationId !== event.correlationId) {
                return
              }
              if (event.eventType === EventTypes.ResponseCallback) {
                const response = this.getResponseHandler(event)
                Logger.debug('Response received', response)
                resolve(response)
              } else if (event.eventType === EventTypes.Error) {
                Logger.debug('Error received', event)
                throwEventError(event)
              }
            } catch (error) {
              Logger.debug('Error on data request')
              reject(error)
            }
          }
        },
      )
    })
  }

  getResponseWithCallback(
    correlationId: string,
    callback: IotaResponseCallbackFunction,
  ) {
    this.getResponse(correlationId)
      .then((response) => callback(null, response))
      .catch((error) => callback(error, null))
  }
}
