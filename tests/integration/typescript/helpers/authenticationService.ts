import encode from 'base64url'
import { nanoid } from 'nanoid'
import { DidDocumentService, KeysService } from '@affinidi/common'

type AnyObject = Record<string, any>
class AuthenticationService {
  constructor() {}

  public encodeObjectToJWT(jwtObject: {
    header: AnyObject
    payload: string
    signature: Buffer
  }) {
    if (!jwtObject.payload || !jwtObject.header || !jwtObject.signature) {
      throw new Error(
        'The JWT is not complete, header / payload / signature are missing',
      )
    }

    return [
      encode(JSON.stringify(jwtObject.header)),
      encode(jwtObject.payload),
      encode(jwtObject.signature),
    ].join('.')
  }

  public signJWT(
    input: { header: AnyObject; payload: AnyObject },
    ks: KeysService,
  ): string {
    const toSign = [
      encode(JSON.stringify(input.header)),
      encode(JSON.stringify(input.payload)),
    ].join('.')
    const digest = KeysService.sha256(Buffer.from(toSign))
    const signature = ks.sign(digest)
    return this.encodeObjectToJWT({
      header: input.header,
      payload: JSON.stringify(input.payload),
      signature,
    })
  }
  signAssertion(
    encryptionSeed: string,
    seedPassword: string,
    aud?: string,
    typ?: string,
    payloadJson?: string,
  ) {
    const keysService = new KeysService(encryptionSeed, seedPassword)
    const keyDidService =
      DidDocumentService.createDidDocumentService(keysService)
    const kid = keyDidService.getKeyId()
    const did = keyDidService.getMyDid()

    const issueTimeS = Math.floor(new Date().getTime() / 1000)

    // Use the passed payload if provided, otherwise create a default one.
    const payload = payloadJson
      ? JSON.parse(payloadJson)
      : {
          iss: did,
          sub: did,
          aud: aud ?? '',
          jti: nanoid(),
          exp: issueTimeS + 5 * 60,
          iat: issueTimeS,
        }

    // Use the provided algorithm if given; otherwise, default to ES256K.
    // Optionally, you can also decide on the header type based on whether a custom payload was provided.
    const header = {
      alg: 'ES256K',
      kid,
      typ: typ ?? 'openid4vci-proof+jwt',
    }

    return this.signJWT({ header, payload }, keysService)
  }

  getSignedAssertionObject(
    encryptionSeed: string,
    seedPassword: string,
    did: string,
    aud: string,
  ) {
    const clientAssertion: string = this.signAssertion(
      encryptionSeed,
      seedPassword,
      aud,
    )
    const data = JSON.stringify({
      grant_type: 'client_credentials',
      client_assertion_type:
        'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
      client_assertion: clientAssertion,
      client_id: did,
    })
    return data
  }
}

export { AuthenticationService }
