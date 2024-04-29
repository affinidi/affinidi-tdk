import {
  WalletApi,
  Configuration,
  SignCredentialResultDto,
} from '@affinidi-tdk/organizational-wallet-client'

export interface SignCredential extends SignCredentialResultDto {}

export interface ICWEParams {
  authProvider: any
  apiGatewayUrl: string
}

export class Cwe {
  private readonly walletApi: WalletApi
  constructor({ authProvider, apiGatewayUrl }: ICWEParams) {
    this.walletApi = new WalletApi(
      new Configuration({
        apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
        basePath: `${apiGatewayUrl}/cwe`,
      })
    )
  }

  public async signCredential(
    walletId: string,
    signCredentialInput: any
  ): Promise<{ [key: string]: any }> {
    const signedCredential = (
      await this.walletApi.signCredential(walletId, signCredentialInput)
    ).data

    return signedCredential
  }
}
