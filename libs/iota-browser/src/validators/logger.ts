export class Logger {
  private static isDebugEnabled: boolean =
    process.env.NEXT_PUBLIC_AFFINIDI_TDK_DEBUG !== undefined

  static debug(message: string, ...optionalParams: any[]): void {
    if (this.isDebugEnabled) {
      console.log(`TDK: ${message}`, ...optionalParams)
    }
  }
}
