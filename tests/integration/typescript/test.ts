require('dotenv').config({ path: '../../.env' })

import { PoliciesApi, Configuration as IamConfiguration } from '@affinidi-tdk/iam-client'
import { DefaultApi, Configuration as VpaConfiguration } from '@affinidi-tdk/credential-verification-client'
import { ConfigurationApi, Configuration as LoginConfiguration } from '@affinidi-tdk/login-configuration-client'
import { IssuanceApi, Configuration as CisConfiguration, StartIssuanceInput, StartIssuanceInputClaimModeEnum } from '@affinidi-tdk/credential-issuance-client'
import { WalletApi, Configuration as WalletConfiguration } from '@affinidi-tdk/wallets-client'
import { ConfigurationsApi, Configuration as IotaConfiguration } from '@affinidi-tdk/iota-client'

import { AuthProvider } from '@affinidi-tdk/auth-provider'

const {
  KEY_ID: keyId ='',
  TOKEN_ID: tokenId ='',
  PASSPHRASE: passphrase ='',
  PRIVATE_KEY: privateKey ='',
  PROJECT_ID: projectId ='',
} = process.env

// 🍌 init AuthProvider
const authProvider = new AuthProvider({ keyId, tokenId, passphrase, privateKey, projectId })
const apiKey = authProvider.fetchProjectScopedToken.bind(authProvider)

async function testIam() {
  const iamConfiguration = new IamConfiguration({ apiKey })
  const api = new PoliciesApi(iamConfiguration)
  const { data } = await api.getPolicies(tokenId, 'token')

  return data
}

async function testVpa() {
  const loginConfiguration = new LoginConfiguration({ apiKey })

  const api = new ConfigurationApi(loginConfiguration)
  const { data } = await api.listLoginConfigurations()

  return data
}

async function testVer() {
  const verifierConfiguration = new VpaConfiguration({ apiKey })

  const api = new DefaultApi(verifierConfiguration)
  const credentials = { "verifiableCredentials": [{"@context": ["https://schema.affinidi.com/TestEmployeeCredentialPersonNestedV1-2.jsonld"], "id": "claimId:6f4532f45933189d", "type": ["VerifiableCredential", "TestEmployeeCredentialPersonNested"], "holder": {"id": "did:elem:EiC9C2LaJrhrgrmXHyamViL15bcAT7P4wBfWefTfGfPoEA" }, "credentialSubject": {"data": {"name": "Jon Snow", "dateOfJoining": "2021-01-01", "otherDetails": {"githubLink": "https://github.com/jon-snow" } } }, "issuanceDate": "2021-10-21T20:58:21.217Z", "issuer": "did:elem:EiD78M2fskp7WgStA915l6xdynkm2PGIn4XtJLF3HFitLw;elem:initial-state=eyJwcm90ZWN0ZWQiOiJleUp2Y0dWeVlYUnBiMjRpT2lKamNtVmhkR1VpTENKcmFXUWlPaUlqY0hKcGJXRnllU0lzSW1Gc1p5STZJa1ZUTWpVMlN5SjkiLCJwYXlsb2FkIjoiZXlKQVkyOXVkR1Y0ZENJNkltaDBkSEJ6T2k4dmR6TnBaQzV2Y21jdmMyVmpkWEpwZEhrdmRqSWlMQ0p3ZFdKc2FXTkxaWGtpT2x0N0ltbGtJam9pSTNCeWFXMWhjbmtpTENKMWMyRm5aU0k2SW5OcFoyNXBibWNpTENKMGVYQmxJam9pVTJWamNESTFObXN4Vm1WeWFXWnBZMkYwYVc5dVMyVjVNakF4T0NJc0luQjFZbXhwWTB0bGVVaGxlQ0k2SWpBeU5tVmlaV0l3TTJFME56WmlPREJpWlRBd09EaGpaakUwTXpjMk9UTTVOR1l3TlRrNFpqZzNOVFEyT0dWbU1UUXdOakExTWpJMllURmxabUk1TkRaa01pSjlMSHNpYVdRaU9pSWpjbVZqYjNabGNua2lMQ0oxYzJGblpTSTZJbkpsWTI5MlpYSjVJaXdpZEhsd1pTSTZJbE5sWTNBeU5UWnJNVlpsY21sbWFXTmhkR2x2Ymt0bGVUSXdNVGdpTENKd2RXSnNhV05MWlhsSVpYZ2lPaUl3TXpKa1pESXlZekJqWTJZMFlUQmtOalV5TldFellUYzBaREUwT1dNeVl6TTNaalF6T1RrelpEUTVaV0ppTmpObU1qSmlObVUxWTJSa1lqSmhNREEwTURFaWZWMHNJbUYxZEdobGJuUnBZMkYwYVc5dUlqcGJJaU53Y21sdFlYSjVJbDBzSW1GemMyVnlkR2x2YmsxbGRHaHZaQ0k2V3lJamNISnBiV0Z5ZVNKZGZRIiwic2lnbmF0dXJlIjoiTHJoRDZhUzZMZHM4MnkwcWZmWjlSX1laUXhzSFNuQWxIWFpwUUVGaGoteEhsRExPb2pvM1piR2dBMDJ3b0hRVkdTUVhxdmtMTVVveTJjMmFjMWo3c1EifQ", "proof": {"type": "EcdsaSecp256k1Signature2019", "created": "2021-10-21T20:59:04Z", "verificationMethod": "did:elem:EiD78M2fskp7WgStA915l6xdynkm2PGIn4XtJLF3HFitLw#primary", "proofPurpose": "assertionMethod", "jws": "eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..u6Cp6BLlSyVMVshDpiLzzcgeAAz7pSLJnFQaMSiBzlcbj93_zKZ3sermaHnlH_5qKwOsmMnRtx5VMDLqe8fSJw" } } ] }
  const { data } = await api.verifyCredentials(credentials)

  return data
}

async function testCwe() {
  const walletConfiguration = new WalletConfiguration({ apiKey })

  const api = new WalletApi(walletConfiguration)
  const { data } = await api.listWallets()

  return data
}

async function testAis() {
  const iotaConfiguration = new IotaConfiguration({ apiKey })

  const api = new ConfigurationsApi(iotaConfiguration)
  const { data } = await api.listIotaConfigurations()

  return data
}

async function testCis() {
  const cisConfiguration = new CisConfiguration({ apiKey })
  const api = new IssuanceApi(cisConfiguration)

  const request: StartIssuanceInput = {
    "holderDid": "did:key:zQ3shNb7dEAa7z4LY8eAbPafNM4iSxppwuvndoHkTUUp8Hbt6",
    "data": [{
      "credentialTypeId": "SkillBadge",
      "credentialData": {
          "studentId": "123",
          "skillId": "456",
          "rating": "5"
      }
    }],
    "claimMode": StartIssuanceInputClaimModeEnum.Normal
  }

  const { data } = await api.startIssuance(projectId, request)

  return data
}

testIam().then((d) => console.log('🌞\n=== IAM: getPolicies ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
testAis().then((d) => console.log('🌞\n=== AIS: listIotaConfigurations ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
testVpa().then((d) => console.log('🌞\n=== VPA: listLoginConfigurations ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
testCwe().then((d) => console.log('🌞\n=== CWE: listWallets ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
testVer().then((d) => console.log('🌞\n=== VER: verifyCredentials ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
testCis().then((d) => console.log('🌞\n=== CIS: startIssuance ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
