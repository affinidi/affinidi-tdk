import { ErrorEvent, ErrorEventSchema } from '../validators/events'

export enum ErrorCode {
  'SIGNED_REQUEST_EVENT' = 'SignedRequestEvent',
  'SIGNED_REQUEST_JWT' = 'SignedRequestJWT',
  'RESPONSE_CALLBACK_EVENT' = 'ResponseCallbackEvent',
  'VERIFIABLE_PRESENTATION_SCHEMA' = 'VerifiablePresentationSchema',
  'ERROR_EVENT' = 'ErrorEvent',
}

function getIssue(errorEvent: ErrorEvent) {
  return errorEvent.error.details![0].issues &&
    errorEvent.error.details![0].issues.length > 0
    ? errorEvent.error.details![0].issues
    : errorEvent.error.message
}

export function getUnexpectedErrorMessage(code: ErrorCode) {
  return `Unexpected error occured. Error Code: ${code} `
}

export function formatEventError(errorEvent: ErrorEvent): string {
  return `Something went wrong. ${getIssue(errorEvent)}. Error Code ${errorEvent.error.httpStatusCode}`
}

export function throwEventParsingError(event: ErrorEvent): never {
  let errorEvent: ErrorEvent
  try {
    errorEvent = ErrorEventSchema.parse(event)
  } catch (e) {
    throw Error(getUnexpectedErrorMessage(ErrorCode.ERROR_EVENT))
  }
  throw Error(formatEventError(errorEvent))
}
