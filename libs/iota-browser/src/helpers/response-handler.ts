import { toUtf8 } from '@aws-sdk/util-utf8-browser'
import { mqtt5 } from 'aws-iot-device-sdk-v2/dist/browser'
import {
  ResponseCallbackEventSchema,
  VerifiablePresentation,
  VerifiablePresentationSchema,
} from '../validators/events'
import { ChannelProvider } from './channel-provider'

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
              if (
                event.eventType === 'response-callback' &&
                event.correlationId === correlationId
              ) {
                // TODO handle Zod errors gracefully
                const responseCallback =
                  ResponseCallbackEventSchema.parse(event)
                const vpToken = VerifiablePresentationSchema.parse(
                  JSON.parse(responseCallback.vpToken),
                )
                const response: IotaResponse = {
                  correlationId: responseCallback.correlationId,
                  vpToken,
                  // TODO parse presentation submission, same as vpToken
                  presentationSubmission:
                    responseCallback.presentationSubmission,
                }
                resolve(response)
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
