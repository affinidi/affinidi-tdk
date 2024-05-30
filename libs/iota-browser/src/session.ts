import {
  ChannelProvider,
  PrepareRequestParams,
} from './helpers/channel-provider'
import { IotaAuthProvider } from './helpers/iota-auth-provider'
import {
  IotaResponse,
  IotaResponseCallbackFunction,
  ResponseHandler,
} from './helpers/response-handler'
import { VaultHandler } from './helpers/vault-handler'
import { IotaRequest } from './request'

export type SessionParams = {
  token: string
}
// TODO Error type
export type IotaRequestCallbackFunction = (
  err: Error | null,
  data: IotaRequest | null,
) => void

export class Session {
  channelProvider: ChannelProvider
  vaultHandler: VaultHandler
  token: string

  constructor(params: SessionParams) {
    const { token } = params

    this.token = token
    const iotaAuthProvider = new IotaAuthProvider()

    this.channelProvider = new ChannelProvider({
      iotaAuthProvider,
    })

    this.vaultHandler = new VaultHandler()
  }

  async initialize(): Promise<void> {
    try {
      await this.channelProvider.initialize(this.token)
    } catch (error) {
      console.error('Error initializing IotaChannelProvider:', error)
    }
  }

  async authenticate(): Promise<void> {
    await this.channelProvider.authenticate(this.token)
  }

  async startClient() {
    return this.channelProvider.startClient()
  }

  async prepareRequest(params: PrepareRequestParams): Promise<IotaRequest> {
    this.isChannelProviderInitialized()
    const iotaRequest = await this.channelProvider.prepareRequest(params)
    const request = new IotaRequest({
      session: this,
      request: iotaRequest,
    })
    return request
  }

  prepareRequestWithCallback(
    params: PrepareRequestParams,
    callback: IotaRequestCallbackFunction,
  ) {
    this.prepareRequest(params)
      .then((request) => callback(null, request))
      .catch((error) => callback(error, null))
  }

  async getResponse(correlationId: string): Promise<IotaResponse> {
    this.isChannelProviderInitialized()
    const responseHandler = new ResponseHandler(this.channelProvider)
    return responseHandler.getResponse(correlationId, this.vaultHandler)
  }

  getResponseWithCallback(
    correlationId: string,
    callback: IotaResponseCallbackFunction,
  ) {
    this.isChannelProviderInitialized()
    const responseHandler = new ResponseHandler(this.channelProvider)
    responseHandler.getResponseWithCallback(
      correlationId,
      callback,
      this.vaultHandler,
    )
  }

  private isChannelProviderInitialized() {
    if (!this.channelProvider) {
      // TODO Error type
      throw new Error('IotaChannelProvider not initialized')
    }
  }
}
