export class BffHeaders {
  public getBffHeaders(
    cookieName: string,
    sessionId: string,
    cliVersion?: string
  ): { [key: string]: string } {
    return {
      Accept: 'application/json',
      'Content-Type': 'application/json',
      'Accept-Encoding': 'gzip, deflate, br',
      Cookie: `${cookieName}=${sessionId}`,
      ...(cliVersion && { 'affinidi-cli-version': `${cliVersion}` }),
    }
  }
}
