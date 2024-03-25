import { generateKeyPairSync } from 'node:crypto'
import { TokensApi, PoliciesApi, ProjectsApi, Configuration as IamConfiguration } from '@affinidi/client-iam'
import { v4 as uuidv4 } from 'uuid'

// type CreatePersonalAccessTokenParams = {
//   userAccessToken: string
//   projectScopedToken: string
//   passphrase: string
//   apiGatewayUrl?: string
//   keyId?: string
//   tokenName?: string
// }

type CreatePersonalAccessTokenResponse = {
  tokenId: string
  keyId: string
  publicKey: string
  privateKey: string
}

export class PersonalAccessToken {
  private readonly userAccessToken: string = ''
  private readonly projectScopedToken: string = ''
  private readonly passphrase: string = ''
  private readonly apiGatewayUrl: string = ''
  private readonly keyId: string = ''
  private readonly tokenName: string = ''

  // TODO: resolve `error JSII1003: Only string-indexed map types are supported`
  //       when CreatePersonalAccessTokenParams type used in constructor.
  //       The same issue in auth-provider class.
  constructor(patParams: { [key: string]: string }) {
    this.userAccessToken = patParams.userAccessToken
    this.projectScopedToken = patParams.projectScopedToken
    this.passphrase = patParams.passphrase
    this.apiGatewayUrl = patParams.apiGatewayUrl || 'https://apse1.api.affinidi.io'
    this.keyId = patParams.keyId || uuidv4().toString()
    this.tokenName = patParams.tokenName || 'test-token'
  }

  public async createPersonalAccessToken(): Promise<{ [key: string]: string }> {
    const { publicKey, privateKey, jwks } = this.generateKeyPair()

    const { tokenId } = await this.createToken(jwks)
    await this.addPrincipal(tokenId)
    await this.updatePolicies(tokenId)

    return { tokenId, keyId: this.keyId, publicKey, privateKey } as CreatePersonalAccessTokenResponse
  }

  private generateKeyPair() {
    const { publicKey, privateKey } = generateKeyPairSync('rsa', { modulusLength: 4096 })

    const publicKeyPem = publicKey.export({ format: 'pem', type: 'spki' })
    const privateKeyPem = privateKey.export({
      format: 'pem',
      type: 'pkcs8',
      cipher: 'aes-256-cbc',
      passphrase: this.passphrase,
    })

    const publicKeyJwk = publicKey.export({ format: 'jwk' })

    const jwks = {
      keys: [
        {
          use: 'sig',
          kid: this.keyId,
          alg: 'RS256',
          ...publicKeyJwk,
        },
      ],
    }

    return { publicKey: publicKeyPem, privateKey: privateKeyPem, jwks }
  }

  private async createToken(jwks: any) {
    // NOTE: `userAccessToken` is required to call createToken() of Affinidi IAM
    const createTokenBody = {
      name: this.tokenName,
      authenticationMethod: {
        type: 'PRIVATE_KEY',
        signingAlgorithm: 'RS256',
        publicKeyInfo: {
          jwks,
        },
      },
    }

    const tokensApi = new TokensApi(this.iamConfiguration(this.userAccessToken))

    // TODO: resolve with proper type in next iteration
    // @ts-ignore
    const { data } = await tokensApi.createToken(createTokenBody)

    return { tokenId: data.id }
  }

  private async addPrincipal(tokenId: string) {
    const addPrinicipalBody = {
      principalId: tokenId,
      principalType: 'token',
    }

    const projectsApi = new ProjectsApi(this.iamConfiguration(this.projectScopedToken))
    await projectsApi.addPrincipalToProject(addPrinicipalBody)
  }

  private async updatePolicies(tokenId: string) {
    const policiesApi = new PoliciesApi(this.iamConfiguration(this.projectScopedToken))
    const getPoliciesResponse = await policiesApi.getPolicies(tokenId, 'token')

    const policies = getPoliciesResponse.data

    policies.statement[0].action.push('*')
    policies.statement[0].resource.push('*')

    await policiesApi.updatePolicies(tokenId, 'token', policies)
  }

  private iamConfiguration(apiKey: string) {
    return new IamConfiguration({
      apiKey,
      basePath: `${this.apiGatewayUrl}/iam`,
    })
  }
}
