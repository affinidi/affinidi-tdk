import { VerifiableCredential } from './verifiableCredential'

export interface VerifiablePresentation {
  '@context': string[]
  id: string
  type: string[]
  holder: {
    id: string
  }
  verifiableCredential: VerifiableCredential[]
  proof?: any
}
