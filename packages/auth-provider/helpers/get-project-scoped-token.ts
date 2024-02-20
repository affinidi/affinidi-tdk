import axios from 'axios'
import jwt from 'jsonwebtoken'
import qs from 'qs'

// TODO: export and config against supported values
const ALGORITHM = 'RS256'

type SignPayload = {
  machineUserId: string
  tokenEndpoint: string
  privateKey: string
  passphrase: string
  keyId: string
}

type GetProjectScopedToken = SignPayload & {
  apiGatewayUrl: string
  projectId: string
}

async function signPayload({ machineUserId, tokenEndpoint, privateKey, passphrase, keyId }: SignPayload) {
  const issueTimeInSeconds = Math.floor(new Date().getTime() / 1000)

  const payload = {
    iss: machineUserId,
    sub: machineUserId,
    aud: tokenEndpoint,
    jti: new Date().toString() + Math.random(),
    exp: issueTimeInSeconds + 5 * 60,
    iat: issueTimeInSeconds,
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
    },
  )

  return token
}

async function getUserAccessToken({ machineUserId, tokenEndpoint, privateKey, passphrase, keyId }: SignPayload) {
  const token = await signPayload({ machineUserId, tokenEndpoint, privateKey, passphrase, keyId })

  const input = qs.stringify({
    grant_type: 'client_credentials',
    scope: 'openid',
    client_assertion_type: 'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
    client_assertion: token,
    client_id: machineUserId,
  })

  const { data } = await axios(tokenEndpoint, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    data: input,
  })

  return data.access_token
}

export async function getProjectScopedToken({
  apiGatewayUrl,
  projectId,
  machineUserId,
  tokenEndpoint,
  privateKey,
  passphrase,
  keyId,
}: GetProjectScopedToken) {
  const userAccessToken = await getUserAccessToken({
    machineUserId,
    tokenEndpoint,
    privateKey,
    passphrase,
    keyId,
  })

  const { data } = await axios(`${apiGatewayUrl}/iam/v1/sts/create-project-scoped-token`, {
    method: 'POST',
    headers: {
      Authorization: `Bearer ${userAccessToken}`,
      'Content-Type': 'application/json',
    },
    data: { projectId },
  })

  return data.accessToken
}
