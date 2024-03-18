import { Jwt, ProjectScopedToken } from './helpers'

export class AuthProvider {
  private projectScopedToken = ''
  private readonly apiGatewayUrl: string = ''
  private readonly keyId: string = ''
  private readonly machineUserId: string = ''
  private readonly passphrase: string = ''
  private readonly privateKey: string = ''
  private readonly projectId: string = ''
  private readonly publicKey: string = ''
  private readonly tokenEndpoint: string = ''
  private readonly projectScopedTokenInstance: ProjectScopedToken
  private readonly jwt: Jwt

  constructor(params: { [key: string]: string }) {
    this.apiGatewayUrl = params.apiGatewayUrl
    this.keyId = params.keyId
    this.machineUserId = params.machineUserId
    this.passphrase = params.passphrase
    this.privateKey = params.privateKey
    this.projectId = params.projectId
    this.publicKey = params.publicKey
    this.tokenEndpoint = params.tokenEndpoint
    this.projectScopedTokenInstance = new ProjectScopedToken()
    this.jwt = new Jwt()
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
          machineUserId: this.machineUserId,
          passphrase: this.passphrase,
          privateKey: this.privateKey,
          projectId: this.projectId,
          tokenEndpoint: this.tokenEndpoint,
        })
    }

    return this.projectScopedToken
  }
}
