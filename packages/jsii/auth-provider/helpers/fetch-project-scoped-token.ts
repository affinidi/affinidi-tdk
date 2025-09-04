import axios from 'axios'
import * as jwt from 'jsonwebtoken'
import * as qs from 'qs'
import { ISignPayload } from './jwt'

// TODO: export and config against supported values
const ALGORITHM = 'RS256'

export interface IFetchProjectScopedToken extends ISignPayload {
  apiGatewayUrl: string
  projectId: string
}

export class ProjectScopedToken {
  public async signPayload(signPayload: ISignPayload) {
    const { tokenId, privateKey, passphrase, keyId, audience } = signPayload
    const issueTimeInSeconds = Math.floor(new Date().getTime() / 1000)

    const payload = {
      iss: tokenId,
      sub: tokenId,
      aud: audience,
      jti: new Date().toString() + Math.random(),
      exp: issueTimeInSeconds + 5 * 60,
      iat: issueTimeInSeconds,
    }

    let secret
    if (passphrase) {
      secret = {
        key: privateKey,
        passphrase,
      }
    } else {
      secret = privateKey
    }

    const token = jwt.sign(payload, secret, {
      algorithm: ALGORITHM,
      keyid: keyId,
    })

    return token
  }

  public async getUserAccessToken(signPayload: ISignPayload) {
    const { tokenId, audience, privateKey, passphrase, keyId } = signPayload
    const token = await this.signPayload({
      tokenId,
      audience,
      privateKey,
      passphrase,
      keyId,
    })

    const input = qs.stringify({
      grant_type: 'client_credentials',
      scope: 'openid',
      client_assertion_type:
        'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
      client_assertion: token,
      client_id: tokenId,
    })

    const { data } = await axios(audience, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      data: input,
    })

    return data.access_token
  }

  public async fetchProjectScopedToken(
    projectScopedToken: IFetchProjectScopedToken,
  ) {
    const {
      apiGatewayUrl,
      projectId,
      tokenId,
      audience,
      privateKey,
      passphrase,
      keyId,
    } = projectScopedToken
    const userAccessToken = await this.getUserAccessToken({
      tokenId,
      audience,
      privateKey,
      passphrase,
      keyId,
    })

    const { data } = await axios(
      `${apiGatewayUrl}/iam/v1/sts/create-project-scoped-token`,
      {
        method: 'POST',
        headers: {
          Authorization: `Bearer ${userAccessToken}`,
          'Content-Type': 'application/json',
        },
        data: { projectId },
      },
    )

    return data.accessToken
  }
}
