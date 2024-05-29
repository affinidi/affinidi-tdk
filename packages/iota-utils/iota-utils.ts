import { EnvironmentHandler } from "./helpers";
import { Environment } from "./helpers/environment";

export interface IAffinidiVaultLinks {
  web: string;
  android: string;
  ios: string;
};

const LOCAL_WEB_VAULT_URL = "http://localhost:3001/login";
const DEV_WEB_VAULT_URL = "https://vault.dev.affinidi.com/login";
const PROD_WEB_VAULT_URL = "https://vault.affinidi.com/login";

const envToWebVaultUrlMap = {
  [Environment.LOCAL]: LOCAL_WEB_VAULT_URL,
  [Environment.DEVELOPMENT]: DEV_WEB_VAULT_URL,
  [Environment.PRODUCTION]: PROD_WEB_VAULT_URL,
};

const ANDROID_VAULT_URL = "affinidi-vault//something";
const IOS_VAULT_URL = "affinidi-vault//something";

export class IotaUtils {
  static env = new EnvironmentHandler().fetchEnvironment()

  static createVaultLinks(request: { [key: string]: any }): IAffinidiVaultLinks {
    if (!request.id) {
      throw Error('Please provide id')
    }
    if (!request.payload.request || !request.payload.client_id) {
      throw Error('Please provide request and client_id in payload')
    }
    const params = new URLSearchParams();
    params.append("request", request.payload.request);
    params.append("client_id", request.payload.client_id);

    const queryString = params.toString();

    return {
      web: `${envToWebVaultUrlMap[this.env] || PROD_WEB_VAULT_URL}?${queryString}`,
      android: `${ANDROID_VAULT_URL}?${queryString}`,
      ios: `${IOS_VAULT_URL}?${queryString}`,
    };
  }
}
