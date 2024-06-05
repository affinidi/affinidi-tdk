import {
  EnvironmentHandler,
  IotaAuthProvider,
  IotaCredentials,
} from './helpers'
import { Environment } from './helpers/environment'

const LOCAL_VAULT_URL = 'http://localhost:3001/login'
const DEV_VAULT_URL = 'https://vault.dev.affinidi.com/login'
const PROD_VAULT_URL = 'https://vault.affinidi.com/login'

const envToWebVaultUrlMap = {
  [Environment.LOCAL]: LOCAL_VAULT_URL,
  [Environment.DEVELOPMENT]: DEV_VAULT_URL,
  [Environment.PRODUCTION]: PROD_VAULT_URL,
}

export class IotaUtils {
  static env = new EnvironmentHandler().fetchEnvironment()

  static createVaultLink(request: { [key: string]: any }): string {
    if (!request.payload.request || !request.payload.client_id) {
      throw Error('Please provide request and client_id in payload')
    }
    const params = new URLSearchParams()
    params.append('request', request.payload.request)
    params.append('client_id', request.payload.client_id)

    const queryString = params.toString()
    const vaultLink = `${envToWebVaultUrlMap[this.env] || PROD_VAULT_URL}?${queryString}`

    return vaultLink
  }

  static async limitedTokenToIotaCredentials(
    token: string,
  ): Promise<IotaCredentials> {
    const authProvider = new IotaAuthProvider()
    return authProvider.limitedTokenToIotaCredentials(token)
  }
}
