import { validateToken, getProjectScopedToken } from './helpers'

type ProjectScopedTokenParams = {
  apiGatewayUrl: string
  keyId: string
  machineUserId: string
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
  private readonly machineUserId: string = ''
  private readonly passphrase: string = ''
  private readonly privateKey: string = ''
  private readonly projectId: string = ''
  private readonly publicKey: string = ''
  private readonly tokenEndpoint: string = ''

  constructor(param: ProjectScopedTokenParams) {
    this.apiGatewayUrl = param.apiGatewayUrl
    this.keyId = param.keyId
    this.machineUserId = param.machineUserId
    this.passphrase = param.passphrase
    this.privateKey = param.privateKey
    this.projectId = param.projectId
    this.publicKey = param.publicKey
    this.tokenEndpoint = param.tokenEndpoint
  }

  public async getProjectScopedToken(): Promise<string> {
    // NOTE: `isValid` for project scoped token can be checked when we pass Elements public key
    const { /* isValid, */ isExpired } = this.projectScopedToken && validateToken(this.projectScopedToken, this.publicKey)

    const shouldRefresh = !this.projectScopedToken || isExpired

    if (shouldRefresh) {
      this.projectScopedToken = await getProjectScopedToken({
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
