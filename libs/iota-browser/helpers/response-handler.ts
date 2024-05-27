import { mqtt5 } from 'aws-crt'
import { ChannelProvider } from './channel-provider'
import { toUtf8 } from '@aws-sdk/util-utf8-browser'
import { ResponseCallbackEventSchema, VerifiablePresentation, VerifiablePresentationSchema } from '../validators/events'
import { VaultHandler } from './vault-handler'

export type IotaResponse = {
    correlationId: string
    vpToken: VerifiablePresentation
    // TODO Proper typing for presentation submission
    presentationSubmission: string
}

export class ResponseHandler {
    channelProvider: ChannelProvider
    constructor(channelProvider: ChannelProvider) {
        this.channelProvider = channelProvider
    }

    async getResponse(correlationId: string, vaultHandler: VaultHandler): Promise<IotaResponse> {
        const client = this.channelProvider.getClient()
        return new Promise((resolve, reject) => {
            client.on('messageReceived', (messageReceivedEvent: mqtt5.MessageReceivedEvent): void => {
                if (messageReceivedEvent.message.payload) {
                    const raw_data = toUtf8(messageReceivedEvent.message.payload as Buffer)

                    try {
                        vaultHandler.closeVault(correlationId)
                        const event = JSON.parse(raw_data)
                        if (event.eventType === 'response-callback' && event.correlationId === correlationId) {
                            console.log('response-callback:', event)
                            // TODO handle Zod errors gracefully
                            const responseCallback = ResponseCallbackEventSchema.parse(event)
                            const vpToken = VerifiablePresentationSchema.parse(JSON.parse(responseCallback.vpToken))
                            const response: IotaResponse = {
                                correlationId: responseCallback.correlationId,
                                vpToken,
                                // TODO parse presentation submission, same as vpToken
                                presentationSubmission: responseCallback.presentationSubmission,
                            }
                            resolve(response)
                        }
                    } catch (error) {
                        console.log(error)
                        reject(error)
                    }
                }
            })
        })
    }

    getResponseWithCallback(correlationId: string, vaultHandler: VaultHandler, callback: any) {
        this.getResponse(correlationId, vaultHandler)
            .then((request) => callback(null, request))
            .catch((error) => callback(error, null))
    }
}
