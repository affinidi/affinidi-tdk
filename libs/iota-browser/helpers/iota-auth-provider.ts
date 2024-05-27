import { Configuration, IotaApi } from '@affinidi-tdk/iota-client'
import { CognitoIdentityClient, GetCredentialsForIdentityCommand } from '@aws-sdk/client-cognito-identity'
import { AwsCredentialIdentity } from '@smithy/types'

const DEFAULT_REGION = 'ap-southeast-1'
const DEFAULT_API_GW = 'https://apse1.dev.api.affinidi.io/ais'

type AuthProviderParams = {
    region: string
    apiGW: string
}

export type IotaCredentials = {
    credentialsProvider: CustomCredentialsProvider
    iotClientId: string
}

export class IotaAuthProvider {
    region: string
    apiGW: string

    constructor(params?: AuthProviderParams) {
        this.region = params?.region ?? DEFAULT_REGION
        this.apiGW = params?.apiGW ?? DEFAULT_API_GW
    }

    async limitedTokenToIotaCredentials(token: string): Promise<IotaCredentials> {
        const iotaAPIClient = new IotaApi(new Configuration({ basePath: this.apiGW ?? DEFAULT_API_GW, }))
        const response = await iotaAPIClient.awsExchangeCredentials({
            assertion: token,
        })
        const {
            iotClientId,
            credentials: { identityId, token: cognitoToken },
        } = response.data
        console.log('credentials', { identityId, cognitoToken })

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
        const sigV4Credentials = responseCmd.Credentials

        console.log('sigV4Credentials', sigV4Credentials)
        const credentialsProvider = new CustomCredentialsProvider(
            {
                accessKeyId: sigV4Credentials?.AccessKeyId!,
                secretAccessKey: sigV4Credentials?.SecretKey!,
                sessionToken: sigV4Credentials?.SessionToken!,
            },
            this.region,
        )

        const iotaCredentials: IotaCredentials = {
            iotClientId,
            credentialsProvider,
        }

        return iotaCredentials
    }
}

class CustomCredentialsProvider {
    private awsCredentialIdentity: AwsCredentialIdentity
    private region: string

    constructor(awsCredentialIdentity: AwsCredentialIdentity, region: string) {
        this.awsCredentialIdentity = awsCredentialIdentity
        this.region = region
    }

    getCredentials() {
        return {
            aws_region: this.region,
            aws_access_id: this.awsCredentialIdentity.accessKeyId,
            aws_secret_key: this.awsCredentialIdentity.secretAccessKey,
            aws_sts_token: this.awsCredentialIdentity.sessionToken,
        }
    }

    async refreshCredentials(): Promise<void> {
        // TODO
        return Promise.resolve()
    }
}
