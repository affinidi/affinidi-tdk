import { Environment, EnvironmentUtils } from './environment'

const LOCAL_VAULT_URL = 'http://localhost:3001'
const DEV_VAULT_URL = 'https://vault.dev.affinidi.com'
const PROD_VAULT_URL = 'https://vault.affinidi.com'

const envToWebVaultUrlMap = {
  [Environment.LOCAL]: LOCAL_VAULT_URL,
  [Environment.DEVELOPMENT]: DEV_VAULT_URL,
  [Environment.PRODUCTION]: PROD_VAULT_URL,
}

const SHARE_PATH = '/login'
const CLAIM_PATH = '/claim'

export class VaultUtils {
  static buildShareLink(request: string, client_id: string): string {
    const env = EnvironmentUtils.fetchEnvironment()
    const params = new URLSearchParams()
    params.append('request', request)
    params.append('client_id', client_id)
    const queryString = params.toString()
    return `${envToWebVaultUrlMap[env] || PROD_VAULT_URL}${SHARE_PATH}?${queryString}`
  }

  static buildClaimLink(credentialOfferUri: string): string {
    const env = EnvironmentUtils.fetchEnvironment()
    const params = new URLSearchParams()
    params.append('credential_offer_uri', credentialOfferUri)
    const queryString = params.toString()
    return `${envToWebVaultUrlMap[env] || PROD_VAULT_URL}${CLAIM_PATH}?${queryString}`
  }
}
