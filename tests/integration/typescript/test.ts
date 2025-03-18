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
  VERIFIABLE_CREDENTIAL: verifiableCredential ='',
  CREDENTIAL_ISSUANCE_DATA: credentialIssuanceData ='',
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
  const credentials = { "verifiableCredentials": [ JSON.parse(verifiableCredential) ] }
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

  const request: StartIssuanceInput = JSON.parse(credentialIssuanceData)

  const { data } = await api.startIssuance(projectId, request)

  return data
}

testIam().then((d) => console.log('🌞\n=== IAM: getPolicies ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
testAis().then((d) => console.log('🌞\n=== AIS: listIotaConfigurations ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
testVpa().then((d) => console.log('🌞\n=== VPA: listLoginConfigurations ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
testCwe().then((d) => console.log('🌞\n=== CWE: listWallets ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
testVer().then((d) => console.log('🌞\n=== VER: verifyCredentials ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
testCis().then((d) => console.log('🌞\n=== CIS: startIssuance ===\n', d)).catch((e) => console.log('⛅️\n', e.message))
