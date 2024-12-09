import { Environment, EnvironmentUtils } from './environment'

export class Logger {
  private static isDebugEnabled: boolean =
    EnvironmentUtils.fetchEnvironment() !== Environment.PRODUCTION

  static debug(message: string, ...optionalParams: any[]): void {
    if (this.isDebugEnabled && typeof console !== 'undefined' && console.log) {
      console.log(`TDK: ${message}`, ...optionalParams)
    }
  }
}
