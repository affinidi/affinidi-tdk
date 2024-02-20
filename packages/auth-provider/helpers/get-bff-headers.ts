export function getBffHeaders(cookieName: string, sessionId: string, cliVersion?: string) {
  return {
    Accept: 'application/json',
    'Content-Type': 'application/json',
    'Accept-Encoding': 'gzip, deflate, br',
    Cookie: `${cookieName}=${sessionId}`,
    ...(cliVersion && { 'affinidi-cli-version': `${cliVersion}` }),
  }
}
