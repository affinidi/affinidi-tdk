import { z } from 'zod'

const EventTypes = {
  PrepareRequest: 'prepareRequest',
  SignedRequest: 'signedRequest',
  ResponseCallback: 'response-callback',
  Error: 'error',
} as const

const BaseEvent = z.object({
  eventType: z.nativeEnum(EventTypes),
  correlationId: z.string().uuid(),
})

const PrepareRequestEventSchema = BaseEvent.extend({
  eventType: z.literal(EventTypes.PrepareRequest),
  queryId: z.string(),
  tokenMaxAge: z.number().optional(),
  audience: z.string().optional(),
})
export type PrepareRequestEvent = z.infer<typeof PrepareRequestEventSchema>

export const SignedRequestEventSchema = BaseEvent.extend({
  eventType: z.literal(EventTypes.SignedRequest),
  data: z.object({
    jwt: z.string(),
  }),
})
export type SignedRequestEvent = z.infer<typeof SignedRequestEventSchema>

// TODO full VP schema
export const VerifiablePresentationSchema = z.object({
  verifiableCredential: z.array(z.object({ credentialSubject: z.any() })),
})
export type VerifiablePresentation = z.infer<
  typeof VerifiablePresentationSchema
>

export const ResponseCallbackEventSchema = BaseEvent.extend({
  eventType: z.literal(EventTypes.ResponseCallback),
  vpToken: z.string(),
  presentationSubmission: z.string(),
})
export type ResponseCallbackEvent = z.infer<typeof ResponseCallbackEventSchema>

const ERROR_LOCATION = ['body', 'path', 'query'] as const
const ErrorDetailItem = z.object({
  issue: z.string(),
  field: z.string().optional(),
  value: z.string().optional(),
  location: z.enum(ERROR_LOCATION).optional(),
})
const ErrorEventSchema = BaseEvent.extend({
  eventType: z.literal(EventTypes.Error),
  error: z.object({
    message: z.string(),
    httpStatusCode: z.number(),
    details: z.array(ErrorDetailItem).optional(),
  }),
})
export type ErrorEvent = z.infer<typeof ErrorEventSchema>
