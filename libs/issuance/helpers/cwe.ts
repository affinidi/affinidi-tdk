import {
  WalletApi,
  Configuration,
  SignCredentialResultDto,
} from '@affinidi/client-cwe';

export interface SignCredential extends SignCredentialResultDto {}

export interface ICWEParams {
  projectScopedToken: string;
  apiGatewayUrl: string;
}

export class Cwe {
  private readonly walletApi: WalletApi;
  constructor({ projectScopedToken, apiGatewayUrl }: ICWEParams) {
    this.walletApi = new WalletApi(
      new Configuration({
        apiKey: projectScopedToken,
        basePath: `${apiGatewayUrl}/cwe`,
      })
    );
  }

  public async signCredential(
    walletId: string,
    signCredentialInput: any
  ): Promise<{ [key: string]: any }> {
    const signedCredential = (
      await this.walletApi.signCredential(walletId, signCredentialInput)
    ).data;

    return signedCredential;
  }
}
