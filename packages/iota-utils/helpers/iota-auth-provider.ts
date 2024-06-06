import { Configuration, IotaApi } from '@affinidi-tdk/iota-client'
import {
  CognitoIdentityClient,
  GetCredentialsForIdentityCommand,
} from '@aws-sdk/client-cognito-identity'

const DEFAULT_REGION = 'ap-southeast-1'
const DEFAULT_API_GW = 'https://apse1.dev.api.affinidi.io/ais'

export interface IAuthProviderParams {
  region: string
  apiGW: string
}

export interface IotaCredentials {
  readonly credentials: Credentials
  readonly iotClientId: string
}

export interface Credentials {
  readonly accessKeyId?: string
  readonly secretKey?: string
  readonly sessionToken?: string
  readonly expiration?: Date
}

export class IotaAuthProvider {
  region: string
  apiGW: string

  constructor(param?: { [key: string]: any }) {
    this.region = param?.region ?? DEFAULT_REGION
    this.apiGW = param?.apiGW ?? DEFAULT_API_GW
  }

  async limitedTokenToIotaCredentials(token: string): Promise<IotaCredentials> {
    const iotaAPIClient = new IotaApi(
      new Configuration({ basePath: this.apiGW ?? DEFAULT_API_GW }),
    )
    const response = await iotaAPIClient.awsExchangeCredentials({
      assertion: token,
    })
    const {
      iotClientId,
      credentials: { identityId, token: cognitoToken },
    } = response.data

    const cognitoIdentityClient = new CognitoIdentityClient({
      region: this.region,
    })
    const responseCmd = await cognitoIdentityClient.send(
      new GetCredentialsForIdentityCommand({
        IdentityId: identityId,
        Logins: {
          'cognito-identity.amazonaws.com': cognitoToken,
        },
      }),
    )
    const credentials = responseCmd.Credentials
    if (!credentials) {
      throw new Error('Error fetching credentials')
    }

    return {
      credentials: {
        accessKeyId: credentials.AccessKeyId,
        secretKey: credentials.SecretKey,
        sessionToken: credentials.SessionToken,
        expiration: credentials.Expiration,
      },
      iotClientId,
    }
  }
}
