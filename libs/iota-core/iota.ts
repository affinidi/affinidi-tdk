import { IotaAuthProvider, IotaCredentials } from './helpers'

export class Iota {
  static async limitedTokenToIotaCredentials(
    token: string,
  ): Promise<IotaCredentials> {
    const iotaAuthProvider = new IotaAuthProvider()
    return iotaAuthProvider.limitedTokenToIotaCredentials(token)
  }
}
