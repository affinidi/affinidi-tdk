require('dotenv').config({ path: '../../.env' })
import {
  IotaApi,
  CallbackApi,
  Configuration as IotaConfiguration,
  InitiateDataSharingRequestOKData,
  FetchIOTAVPResponseOK,
  CreateIotaConfigurationInputModeEnum,
} from '@affinidi-tdk/iota-client'
import { AuthProvider } from '@affinidi-tdk/auth-provider'
import { randomUUID } from 'crypto'
import * as jose from 'jose'

const {
  KEY_ID: keyId ='',
  TOKEN_ID: tokenId ='',
  PASSPHRASE: passphrase ='',
  PRIVATE_KEY: privateKey ='',
  PROJECT_ID: projectId ='',
  IOTA_CONFIG_ID: configurationId ='',
  QUERY_ID: queryId ='',
  DID: did ='',
  REDIRECT_URI: redirectUri ='',
  PRESENTATION_SUBMISSION: presentation_submission ='',
  VP_TOKEN: vp_token ='',
} = process.env

export async function startRedirectFlow() {
  const authProvider = new AuthProvider({ keyId, tokenId, passphrase, privateKey, projectId })

  const apiKey = authProvider.fetchProjectScopedToken.bind(authProvider)

  const iotaConfiguration = new IotaConfiguration({ apiKey })
  const iotaApi = new IotaApi(iotaConfiguration)

  const callbackConfiguration = new IotaConfiguration()
  const callbackApi = new CallbackApi(callbackConfiguration)

  let response

  try {
    const { data: dataSharingRequestResponse } = await iotaApi.initiateDataSharingRequest({
        queryId,
        redirectUri,
        configurationId,
        mode: CreateIotaConfigurationInputModeEnum.Redirect,
        correlationId: randomUUID(),
        nonce: randomUUID().slice(0, 10),
      })

    const { correlationId, transactionId, jwt } = dataSharingRequestResponse.data as InitiateDataSharingRequestOKData

    const state = jose.decodeJwt(jwt).state! as string

    const { data: callbackResponse }: any = await callbackApi.iotOIDC4VPCallback({ state, presentation_submission, vp_token })

    const iotaVpResponse: FetchIOTAVPResponseOK = await iotaApi.fetchIotaVpResponse({
      configurationId,
      correlationId,
      transactionId,
      responseCode: callbackResponse.response_code,
    })

    const vp = JSON.parse((iotaVpResponse.data as any).vpToken)

    return vp.verifiableCredential[0].credentialSubject.email
  } catch (error: any) {
    console.dir(error, { depth: 5 })
  }
}

startRedirectFlow().then((data) => console.log('🌞', data)).catch((error) => console.dir(error, { depth: 10 }))
