import { ISignPayload } from './jwt'
import * as jwt from 'jsonwebtoken'

// TODO: export and config against supported values
const ALGORITHM = 'RS256'

export class Iota {
  signIotaJwt(
    projectId: string,
    iotaSessionId: string,
    { tokenId, privateKey, passphrase, keyId, audience }: ISignPayload
  ) {
    const issueTimeInSeconds = Math.floor(new Date().getTime() / 1000)

    const payload = {
      iss: tokenId,
      sub: tokenId,
      aud: audience,
      jti: new Date().toString() + Math.random(),
      exp: issueTimeInSeconds + 5 * 60,
      iat: issueTimeInSeconds,
      project_id: projectId,
      iota_session_id: iotaSessionId,
    }

    const token = jwt.sign(
      payload,
      {
        key: privateKey,
        passphrase,
      },
      {
        algorithm: ALGORITHM,
        keyid: keyId,
      }
    )

    return token
  }
}
