import { verifiablePresentationSchema, type VerifiableCredential } from './ssi'

const baseVC = (): Record<string, unknown> => ({
  '@context': [
    'https://www.w3.org/2018/credentials/v1',
    'https://schema.affinidi.io/TEmailV1R0.jsonld',
  ],
  id: 'claimId:d9935452f270d9d7',
  type: ['VerifiableCredential', 'Email'],
  holder: { id: 'did:key:zQ3sha5D7dqvwA3MSA4hqRYcL28kd1n8kV1XewJwUmjAsJ4w3' },
  issuanceDate: '2025-04-24T20:44:42.269Z',
  credentialSubject: {
    email: 'user@affinidi.com',
  },
  credentialSchema: {
    id: 'https://schema.affinidi.io/TEmailV1R0.json',
    type: 'JsonSchemaValidator2018',
  },
  issuer: 'did:key:zQ3shtMGCU89kb2RMknNZcYGUcHW8P6Cq3CoQyvoDs7Qqh33N', // overridden per test
})

const wrapInVP = (vc: Record<string, unknown>) => ({
  '@context': ['https://www.w3.org/2018/credentials/v1'],
  type: ['VerifiablePresentation'],
  verifiableCredential: [vc],
})

describe('verifiableCredentialSchema — issuer field', () => {
  describe('valid: issuer as a URL string', () => {
    it('accepts a plain URL string', () => {
      const vp = wrapInVP({
        ...baseVC(),
        issuer: 'https://example.edu/issuers/14',
      })
      expect(() => verifiablePresentationSchema.parse(vp)).not.toThrow()
    })

    it('accepts a DID URL string', () => {
      const vp = wrapInVP({
        ...baseVC(),
        issuer: 'did:key:zQ3shtMGCU89kb2RMknNZcYGUcHW8P6Cq3CoQyvoDs7Qqh33N',
      })
      expect(() => verifiablePresentationSchema.parse(vp)).not.toThrow()
    })
  })

  describe('valid: issuer as an object with id', () => {
    it('accepts an object with only id', () => {
      const vp = wrapInVP({
        ...baseVC(),
        issuer: { id: 'https://example.edu/issuers/14' },
      })
      expect(() => verifiablePresentationSchema.parse(vp)).not.toThrow()
    })

    it('accepts an object with id and name (passthrough)', () => {
      const vp = wrapInVP({
        ...baseVC(),
        issuer: {
          id: 'did:key:zQ3shtMGCU89kb2RMknNZcYGUcHW8P6Cq3CoQyvoDs7Qqh33N',
          name: 'Example University',
        },
      })
      expect(() => verifiablePresentationSchema.parse(vp)).not.toThrow()
    })

    it('preserves extra properties on the issuer object', () => {
      const vp = wrapInVP({
        ...baseVC(),
        issuer: {
          id: 'did:key:zQ3shtMGCU89kb2RMknNZcYGUcHW8P6Cq3CoQyvoDs7Qqh33N',
          name: 'Example University',
          description: 'A public university.',
          image: 'https://example.edu/logo.png',
        },
      })
      const result = verifiablePresentationSchema.parse(vp)
      const parsedIssuer = (
        result.verifiableCredential![0] as VerifiableCredential
      ).issuer as {
        id: string
        name: string
        description: string
      }
      expect(parsedIssuer.name).toBe('Example University')
      expect(parsedIssuer.description).toBe('A public university.')
    })
  })

  describe('invalid: issuer missing or wrong type', () => {
    it('rejects a missing issuer', () => {
      const vc = baseVC()
      delete vc.issuer
      const vp = wrapInVP(vc)
      expect(() => verifiablePresentationSchema.parse(vp)).toThrow()
    })

    it('rejects a numeric issuer', () => {
      const vp = wrapInVP({ ...baseVC(), issuer: 42 })
      expect(() => verifiablePresentationSchema.parse(vp)).toThrow()
    })

    it('rejects an object without an id property', () => {
      const vp = wrapInVP({ ...baseVC(), issuer: { name: 'No ID University' } })
      expect(() => verifiablePresentationSchema.parse(vp)).toThrow()
    })

    it('rejects an array value', () => {
      const vp = wrapInVP({
        ...baseVC(),
        issuer: ['https://example.edu/issuers/14'],
      })
      expect(() => verifiablePresentationSchema.parse(vp)).toThrow()
    })

    it('rejects null', () => {
      const vp = wrapInVP({ ...baseVC(), issuer: null })
      expect(() => verifiablePresentationSchema.parse(vp)).toThrow()
    })
  })
})
