export interface VerifiableCredential {
  '@context': string[]
  id: string
  type: [string, string]
  holder: { id: string }
  issuanceDate: string
  expirationDate: string
  issuer: string
  credentialSubject: Record<string, unknown>
  credentialSchema: {
    type: string
    id: string
  }
  proof: Record<string, unknown>
}
