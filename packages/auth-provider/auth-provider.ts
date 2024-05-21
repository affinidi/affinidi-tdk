import { v4 as uuidv4 } from 'uuid'
import { Jwt, ProjectScopedToken, Iota } from './helpers'

const API_GATEWAY_URL = 'https://apse1.api.affinidi.io'
const TOKEN_ENDPOINT = 'https://apse1.auth.developer.affinidi.io/auth/oauth2/token'

export interface IotaTokenOutput {
  readonly iotaJwt: string
  readonly iotaSessionId: string
}

export interface IAuthProviderParams {
  apiGatewayUrl: string
  keyId: string
  tokenId: string
  passphrase: string
  privateKey: string
  projectId: string
  publicKey: string
  tokenEndpoint: string
}

export class AuthProvider {
  private projectScopedToken = ''
  private readonly apiGatewayUrl: string = ''
  private readonly keyId: string = ''
  private readonly tokenId: string = ''
  private readonly passphrase: string = ''
  private readonly privateKey: string = ''
  private readonly projectId: string = ''
  private readonly publicKey: string = ''
  private readonly tokenEndpoint: string = ''
  private readonly projectScopedTokenInstance: ProjectScopedToken
  private readonly jwt: Jwt
  private readonly iotaInstance: Iota

  constructor(param: { [key: string]: string }) {
    const authProviderParams: IAuthProviderParams = {
      apiGatewayUrl: '',
      keyId: '',
      tokenId: '',
      passphrase: '',
      privateKey: '',
      projectId: '',
      publicKey: '',
      tokenEndpoint: '',
    }

    if (!param.apiGatewayUrl) {
      param.apiGatewayUrl = API_GATEWAY_URL
    }

    if (!param.tokenEndpoint) {
      param.tokenEndpoint = TOKEN_ENDPOINT
    }

    this.validateMissingInput(authProviderParams, param)

    this.apiGatewayUrl = param.apiGatewayUrl
    this.keyId = param.keyId
    this.tokenId = param.tokenId
    this.passphrase = param.passphrase
    this.privateKey = param.privateKey
    this.projectId = param.projectId
    this.publicKey = param.publicKey
    this.tokenEndpoint = param.tokenEndpoint

    this.projectScopedTokenInstance = new ProjectScopedToken()
    this.jwt = new Jwt()
    this.iotaInstance = new Iota()
  }

  private validateMissingInput<T>(interfaceType: T, input: any): void {
    const missingFields: string[] = []

    const keys = Object.keys(interfaceType as object) as Array<keyof T>
    keys.forEach((key) => !input[key] && missingFields.push(key as string))

    if (missingFields.length > 0) {
      throw new Error(`Required fields missing: ${missingFields.join(', ')}`)
    }
  }

  private shouldRefreshToken(): boolean {
    const itExistsAndExpired =
      !!this.projectScopedToken &&
      this.jwt.validateToken(this.projectScopedToken, this.publicKey).isExpired // NOTE: `isValid` for project scoped token can be checked when we pass Elements public key

    return !this.projectScopedToken || itExistsAndExpired
  }

  public async fetchProjectScopedToken(): Promise<string> {
    if (this.shouldRefreshToken()) {
      this.projectScopedToken =
        await this.projectScopedTokenInstance.fetchProjectScopedToken({
          apiGatewayUrl: this.apiGatewayUrl,
          keyId: this.keyId,
          tokenId: this.tokenId,
          passphrase: this.passphrase,
          privateKey: this.privateKey,
          projectId: this.projectId,
          audience: this.tokenEndpoint,
        })
    }

    return this.projectScopedToken
  }

  public createIotaToken(
    iotaConfigId: string,
    iotaSessionId?: string,
  ): IotaTokenOutput {
    const sessionId = iotaSessionId ?? uuidv4()

    return {
      iotaJwt: this.iotaInstance.signIotaJwt(
        this.projectId,
        iotaConfigId,
        sessionId,
        {
          keyId: this.keyId,
          tokenId: `token/${this.tokenId}`,
          passphrase: this.passphrase,
          privateKey: this.privateKey,
          audience: `${this.apiGatewayUrl}/ais/v1/aws-exchange-credentials`,
        },
      ),
      iotaSessionId: sessionId,
    }
  }
}
