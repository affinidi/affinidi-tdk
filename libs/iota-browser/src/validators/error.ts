import { ErrorEvent } from '../validators/events'

export enum ErrorCode {
  'SIGNED_REQUEST_EVENT' = 'SignedRequestEvent',
  'SIGNED_REQUEST_JWT' = 'SignedRequestJWT',
  'RESPONSE_CALLBACK_EVENT' = 'ResponseCallbackEvent',
  'VERIFIABLE_PRESENTATION_SCHEMA' = 'VerifiablePresentationSchema',
  'ERROR_EVENT' = 'ErrorEvent',
}

function getIssue(errorEvent: ErrorEvent) {
  return errorEvent.error.details![0].issue &&
    errorEvent.error.details![0].issue.length > 0
    ? errorEvent.error.details![0].issue
    : errorEvent.error.message
}

export function getUnexpectedErrorMessage(code: ErrorCode) {
  return `Unexpected error occured. Error Code: ${code} `
}

export function getErrorMessage(errorEvent: ErrorEvent): string {
  return `Something went wrong. ${getIssue(errorEvent)}. Error Code ${errorEvent.error.httpStatusCode}`
}
