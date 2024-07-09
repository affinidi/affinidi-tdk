import { z } from 'zod'

const baseDescriptor = z
  .object({
    id: z.string(),
    path: z.string(),
    format: z.string(),
  })
  .passthrough()
export type Descriptor = z.infer<typeof baseDescriptor> & {
  path_nested?: Descriptor
}
const descriptorSchema: z.ZodType<Descriptor> = baseDescriptor
  .extend({
    path_nested: z.lazy(() => descriptorSchema.optional()),
  })
  .passthrough()

export const presentationSubmissionSchema = z
  .object({
    id: z.string(),
    definition_id: z.string(),
    descriptor_map: z.array(descriptorSchema),
  })
  .passthrough()
export type PresentationSubmission = z.infer<
  typeof presentationSubmissionSchema
>

const verifiableCredentialSchema = z
  .object({
    '@context': z.array(z.string()),
    credentialSchema: z
      .object({
        id: z.string(),
        type: z.string(),
      })
      .passthrough()
      .optional(),
    credentialStatus: z
      .object({ id: z.string(), type: z.string() })
      .passthrough()
      .optional(),
    credentialSubject: z.any(),
    expirationDate: z.string().datetime().optional(),
    evidence: z.array(z.any()).optional(),
    holder: z
      .object({
        id: z.string(),
      })
      .passthrough(),
    id: z.string(),
    issuanceDate: z.string().datetime(),
    issuer: z.string(),
    proof: z.any().optional(),
    refreshService: z
      .object({ id: z.string(), type: z.string() })
      .passthrough()
      .optional(),
    termsOfUse: z.array(z.any()).optional(),
    type: z.array(z.string()),
  })
  .passthrough()
export type VerifiableCredential = z.infer<typeof verifiableCredentialSchema>

export const verifiablePresentationSchema = z
  .object({
    '@context': z.array(z.string()),
    id: z.string().optional(),
    holder: z.object({ id: z.string() }).passthrough().optional(),
    proof: z.any().optional(),
    type: z.array(z.string()),
    verifiableCredential: z
      .array(verifiableCredentialSchema.passthrough())
      .optional(),
  })
  .passthrough()
export type VerifiablePresentation = z.infer<
  typeof verifiablePresentationSchema
>
