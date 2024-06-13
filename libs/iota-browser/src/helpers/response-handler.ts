import { toUtf8 } from '@aws-sdk/util-utf8-browser'
import { mqtt5 } from 'aws-iot-device-sdk-v2/dist/browser'
import {
  EventTypes,
  ResponseCallbackEventSchema,
  VerifiablePresentation,
  VerifiablePresentationSchema,
  ResponseCallbackEvent,
} from '../validators/events'
import { ChannelProvider } from './channel-provider'
import {
  ErrorCode,
  getError,
  getUnexpectedErrorMessage,
} from '../validators/error'

export type IotaResponse = {
  correlationId: string
  vpToken: VerifiablePresentation
  // TODO Proper typing for presentation submission
  presentationSubmission: string
}

// TODO Error type
export type IotaResponseCallbackFunction = (
  err: Error | null,
  data: IotaResponse | null,
) => void

export class ResponseHandler {
  channelProvider: ChannelProvider
  constructor(channelProvider: ChannelProvider) {
    this.channelProvider = channelProvider
  }

  private getResponseHandler(event: ResponseCallbackEvent) {
    let responseCallback: ResponseCallbackEvent, vpToken: VerifiablePresentation
    try {
      responseCallback = ResponseCallbackEventSchema.parse(event)
    } catch (e) {
      throw Error(getUnexpectedErrorMessage(ErrorCode.RESPONSE_CALLBACK_EVENT))
    }
    try {
      vpToken = VerifiablePresentationSchema.parse(
        JSON.parse(responseCallback.vpToken),
      )
    } catch (e) {
      throw Error(
        getUnexpectedErrorMessage(ErrorCode.VERIFIABLE_PRESENTATION_SCHEMA),
      )
    }
    const response: IotaResponse = {
      correlationId: responseCallback.correlationId,
      vpToken,
      // TODO parse presentation submission, same as vpToken
      presentationSubmission: responseCallback.presentationSubmission,
    }
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
                resolve(response)
              } else if (event.eventType === EventTypes.Error) {
                getError(event)
              }
            } catch (error) {
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
