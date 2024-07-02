import axios from 'axios'
import * as jwkToPem from 'jwk-to-pem'
import * as jwt from 'jsonwebtoken'

export interface ISignPayload {
  tokenId: string
  audience: string
  privateKey: string
  passphrase: string
  keyId: string
}

export interface IValidateToken {
  isValid: boolean
  isExpired: boolean
}

export class Jwt {
  public validateToken(token: string, publicKey: string): IValidateToken {
    try {
      jwt.verify(token, publicKey)

      return { isValid: true, isExpired: false }
    } catch (error: any) {
      if (error.name === 'TokenExpiredError') {
        return { isValid: false, isExpired: true }
      }

      return { isValid: false, isExpired: false }
    }
  }

  public async fetchPublicKey(apiGatewayUrl: string): Promise<string> {
    const { data } = await axios(`${apiGatewayUrl}/iam/.well-known/jwks.json`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    })

    const hasKeys = data?.keys?.length > 0

    if (hasKeys) {
      const jwk = data.keys[0]
      const publickKeyPem = jwkToPem(jwk)

      return publickKeyPem
    }

    return ''
  }
}
