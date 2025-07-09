import { apiKey, isProd, apiGatewayUrl, replaceBaseDomain } from './index'

import {
  BASE_PATH as IssuanceBasePath,
  Configuration as IssuanceConfiguration,
} from '@affinidi-tdk/credential-issuance-client'
import {
  BASE_PATH as VerificationBasePath,
  Configuration as VerificationConfiguration,
} from '@affinidi-tdk/credential-verification-client'
import {
  BASE_PATH as IamBasePath,
  Configuration as IamConfiguration,
} from '@affinidi-tdk/iam-client'
import {
  BASE_PATH as IotaBasePath,
  Configuration as IotaConfiguration,
} from '@affinidi-tdk/iota-client'
import {
  BASE_PATH as LoginBasePath,
  Configuration as LoginConfiguration,
} from '@affinidi-tdk/login-configuration-client'
import {
  BASE_PATH as WalletBasePath,
  Configuration as WalletConfiguration,
} from '@affinidi-tdk/wallets-client'

// NOTE: customBasePath - where service is running. For internal usage
//       By default it is set to Affinidi Gateway
interface ClientConfigOptions {
  customBasePath?: string
}

const resolveBasePath = (customBasePath: string, defaultBasePath: string): string | undefined => {
  if (customBasePath) return customBasePath
  if (!isProd) return replaceBaseDomain(defaultBasePath, apiGatewayUrl)
  return undefined
}

export class ClientsConfigurationService {
  private static issuanceConfig?: IssuanceConfiguration
  private static verificationConfig?: VerificationConfiguration
  private static iamConfig?: IamConfiguration
  private static iotaConfig?: IotaConfiguration
  private static loginConfig?: LoginConfiguration
  private static walletsConfig?: WalletConfiguration

  static getCredentialIssuanceClientConfiguration(options: ClientConfigOptions = {}): IssuanceConfiguration {
    const { customBasePath = '' } = options

    if (ClientsConfigurationService.issuanceConfig) {
      return ClientsConfigurationService.issuanceConfig
    }

    const basePath = resolveBasePath(customBasePath, IssuanceBasePath)

    ClientsConfigurationService.issuanceConfig = new IssuanceConfiguration({
      apiKey,
      ...(basePath ? { basePath } : {})
    })

    return ClientsConfigurationService.issuanceConfig
  }

  static getCredentialVerificationClientConfiguration(options: ClientConfigOptions = {}): VerificationConfiguration {
    const { customBasePath = '' } = options

    if (ClientsConfigurationService.verificationConfig) {
      return ClientsConfigurationService.verificationConfig
    }

    const basePath = resolveBasePath(customBasePath, VerificationBasePath)

    ClientsConfigurationService.verificationConfig = new VerificationConfiguration({
      apiKey,
      ...(basePath ? { basePath } : {})
    })

    return ClientsConfigurationService.verificationConfig
  }

  static getIamClientConfiguration(options: ClientConfigOptions = {}): IamConfiguration {
    const { customBasePath = '' } = options

    if (ClientsConfigurationService.iamConfig) {
      return ClientsConfigurationService.iamConfig
    }

    const basePath = resolveBasePath(customBasePath, IamBasePath)

    ClientsConfigurationService.iamConfig = new IamConfiguration({
      apiKey,
      ...(basePath ? { basePath } : {})
    })

    return ClientsConfigurationService.iamConfig
  }

  static getIotaClientConfiguration(options: ClientConfigOptions = {}): IotaConfiguration {
    const { customBasePath = '' } = options

    if (ClientsConfigurationService.iotaConfig) {
      return ClientsConfigurationService.iotaConfig
    }

    const basePath = resolveBasePath(customBasePath, IotaBasePath)

    ClientsConfigurationService.iotaConfig = new IotaConfiguration({
      apiKey,
      ...(basePath ? { basePath } : {})
    })

    return ClientsConfigurationService.iotaConfig
  }

  static getLoginConfigurationClientConfiguration(options: ClientConfigOptions = {}): LoginConfiguration {
    const { customBasePath = '' } = options

    if (ClientsConfigurationService.loginConfig) {
      return ClientsConfigurationService.loginConfig
    }

    const basePath = resolveBasePath(customBasePath, LoginBasePath)

    ClientsConfigurationService.loginConfig = new LoginConfiguration({
      apiKey,
      ...(basePath ? { basePath } : {})
    })

    return ClientsConfigurationService.loginConfig
  }

  static getWalletsClientConfiguration(options: ClientConfigOptions = {}): WalletConfiguration {
    const { customBasePath = '' } = options

    if (ClientsConfigurationService.walletsConfig) {
      return ClientsConfigurationService.walletsConfig
    }

    const basePath = resolveBasePath(customBasePath, WalletBasePath)

    ClientsConfigurationService.walletsConfig = new WalletConfiguration({
      apiKey,
      ...(basePath ? { basePath } : {})
    })

    return ClientsConfigurationService.walletsConfig
  }
}
