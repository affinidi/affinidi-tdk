import { ErrorEvent, ErrorEventSchema } from '../validators/events'
import { Logger } from '@affinidi-tdk/common/helpers'

export class IotaError extends Error {
  code: IotaErrorCode
  correlationId?: string
  issue?: string
  constructor(
    message: string,
    code: IotaErrorCode,
    correlationId?: string,
    issue?: string,
  ) {
    super(message)
    this.code = code
    this.correlationId = correlationId
    this.issue = issue
  }
}

export enum IotaErrorCode {
  'UNEXPECTED_ERROR' = 'UnexpectedError',
  'DATA_REQUEST_ERROR' = 'DataRequestError',
  'IOTA_CLIENT_NOT_STARTED' = 'IotaClientNotStarted',
  'NOT_AUTHENTICATED' = 'NotAuthenticated',
  'IOTA_SESSION_NOT_INITIALIZED' = 'IotaSessionNotInitialized',
  'UNABLE_TO_CONNECT_WITH_PROVIDED_CREDENTIALS' = 'UnableToConnectWithProvidedCredentials',
}

export enum InternalErrorCode {
  'SIGNED_REQUEST_EVENT' = 'SignedRequestEvent',
  'SIGNED_REQUEST_JWT' = 'SignedRequestJWT',
  'RESPONSE_CALLBACK_EVENT' = 'ResponseCallbackEvent',
  'PARSING_VERIFIABLE_PRESENTATION' = 'ParsingVerifiablePresentation',
  'PARSING_PRESENTATION_SUBMISSION' = 'ParsingPresentationSubmission',
  'PARSING_ERROR_EVENT' = 'ParsingErrorEvent',
}

function getIssue(errorEvent: ErrorEvent) {
  return errorEvent.error.details![0].issue &&
    errorEvent.error.details![0].issue.length > 0
    ? errorEvent.error.details![0].issue
    : errorEvent.error.message
}

export function newUnexpectedError(
  internalErrorCode: InternalErrorCode,
  correlationId?: string,
): IotaError {
  const msg = `Unexpected error occured. Error Code: ${internalErrorCode}`
  const error = new IotaError(
    msg,
    IotaErrorCode.UNEXPECTED_ERROR,
    correlationId,
    internalErrorCode,
  )
  Logger.debug(msg, error)
  return error
}

export function newIotaError(iotaErrorCode: IotaErrorCode): IotaError {
  const msg = `Error setting up Iota channel. Error Code: ${iotaErrorCode}`
  const error = new IotaError(msg, iotaErrorCode)
  Logger.debug(msg, error)
  return error
}

export function newRequestError(event: ErrorEvent): IotaError {
  const issue = getIssue(event)
  const msg = `Error received for request ${event.correlationId}: ${issue}`
  const error = new IotaError(
    msg,
    IotaErrorCode.DATA_REQUEST_ERROR,
    event.correlationId,
    issue,
  )
  Logger.debug(msg, error)
  return error
}

export function throwEventError(event: ErrorEvent): never {
  let errorEvent: ErrorEvent
  try {
    errorEvent = ErrorEventSchema.parse(event)
  } catch (e) {
    if (e instanceof Error) {
      Logger.debug(e.message)
    }
    throw newUnexpectedError(
      InternalErrorCode.PARSING_ERROR_EVENT,
      event.correlationId,
    )
  }
  throw newRequestError(event)
}
