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
  DcqlVpToken,
  presentationSubmissionSchema,
  verifiablePresentationSchema,
  dcqlVpTokenSchema,
} from '../validators/ssi'

export class IotaResponse {
  correlationId: string
  // For PEX this is the single presented VP. For DCQL (OID4VP 1.0 §8.1) the
  // vp_token may carry multiple presentations (one per credential-query id);
  // this exposes only the FIRST one for convenience — read [vpToken] for the
  // complete DCQL structure.
  verifiablePresentation: VerifiablePresentation
  // Raw vp_token string as received. For PEX this is the single VP; for DCQL
  // (OID4VP 1.0 §8.1) it is the JSON object keyed by credential-query id.
  vpToken: string
  // Absent for DCQL responses (there is no presentation_submission).
  presentationSubmission?: PresentationSubmission
  constructor(
    correlationId: string,
    verifiablePresentation: VerifiablePresentation,
    vpToken: string,
    presentationSubmission?: PresentationSubmission,
  ) {
    this.correlationId = correlationId
    this.verifiablePresentation = verifiablePresentation
    this.vpToken = vpToken
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
    try {
      responseCallback = responseCallbackEventSchema.parse(event)
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.RESPONSE_CALLBACK_EVENT,
        event.correlationId,
      )
    }

    let vpJson: unknown
    try {
      vpJson = JSON.parse(responseCallback.vpToken)
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.PARSING_VERIFIABLE_PRESENTATION,
        event.correlationId,
      )
    }

    const rawSubmission = responseCallback.presentationSubmission

    // DCQL (OID4VP 1.0 §8.1): presentation_submission is absent, and vp_token is
    // a JSON object keyed by credential-query id whose values are the
    // presentation(s) that satisfy each query. PEX returns a single VP plus a
    // presentation_submission. Detect DCQL by the missing field (an empty/
    // invalid submission string is left to fail in the PEX parsing path below).
    if (rawSubmission === undefined) {
      let dcqlVpToken: DcqlVpToken
      try {
        dcqlVpToken = dcqlVpTokenSchema.parse(vpJson)
      } catch (e) {
        throw newUnexpectedError(
          InternalErrorCode.PARSING_VERIFIABLE_PRESENTATION,
          event.correlationId,
        )
      }
      const [firstPresentation] = Object.values(dcqlVpToken).flatMap(
        (presentation) =>
          Array.isArray(presentation) ? presentation : [presentation],
      )
      if (!firstPresentation) {
        throw newUnexpectedError(
          InternalErrorCode.PARSING_VERIFIABLE_PRESENTATION,
          event.correlationId,
        )
      }
      return new IotaResponse(
        responseCallback.correlationId,
        firstPresentation,
        responseCallback.vpToken,
      )
    }

    let verifiablePresentation: VerifiablePresentation
    try {
      verifiablePresentation = verifiablePresentationSchema.parse(vpJson)
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.PARSING_VERIFIABLE_PRESENTATION,
        event.correlationId,
      )
    }

    let presentationSubmission: PresentationSubmission
    try {
      presentationSubmission = presentationSubmissionSchema.parse(
        JSON.parse(rawSubmission),
      )
    } catch (e) {
      throw newUnexpectedError(
        InternalErrorCode.PARSING_PRESENTATION_SUBMISSION,
        event.correlationId,
      )
    }

    return new IotaResponse(
      responseCallback.correlationId,
      verifiablePresentation,
      responseCallback.vpToken,
      presentationSubmission,
    )
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
              Logger.debug('Event received', raw_data)
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
