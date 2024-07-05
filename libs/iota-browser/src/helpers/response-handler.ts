import { toUtf8 } from '@aws-sdk/util-utf8-browser'
import { mqtt5 } from 'aws-iot-device-sdk-v2/dist/browser'
import {
  EventTypes,
  ResponseCallbackEventSchema,
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

export type IotaResponse = {
  correlationId: string
  vpToken: any
  // TODO Proper typing for presentation submission
  presentationSubmission: string
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
    let responseCallback: ResponseCallbackEvent,
      vpToken: any,
      presentationSubmission: any
    try {
      responseCallback = ResponseCallbackEventSchema.parse(event)
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.RESPONSE_CALLBACK_EVENT,
        event.correlationId,
      )
    }
    try {
      // TODO schema parse vpToken
      vpToken = JSON.parse(responseCallback.vpToken)
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.PARSING_VERIFIABLE_PRESENTATION,
        event.correlationId,
      )
    }
    try {
      // TODO schema parse presentation submission
      presentationSubmission = JSON.parse(
        responseCallback.presentationSubmission,
      )
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.PARSING_PRESENTATION_SUBMISSION,
        event.correlationId,
      )
    }
    const response: IotaResponse = {
      correlationId: responseCallback.correlationId,
      vpToken,
      presentationSubmission,
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
