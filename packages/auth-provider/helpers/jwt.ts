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
      // NOTE:
      //   - algorithm for JWT of project scoped token is ES256
      //     ```jwt.verify(token, publicKey, { algorithms: ['ES256'] })```
      //   - isValid for project scoped token can be checked when we pass Elements public key
      jwt.verify(token, publicKey)

      return { isValid: true, isExpired: false }
    } catch (error: any) {
      if (error.name === 'TokenExpiredError') {
        return { isValid: false, isExpired: true }
      }

      return { isValid: false, isExpired: false }
    }
  }
}
