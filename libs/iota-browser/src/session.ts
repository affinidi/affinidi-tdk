import {
  ChannelProvider,
  IotaRequest,
  IotaRequestCallbackFunction,
  PrepareRequestParams,
} from './helpers/channel-provider'
import { IotaAuthProvider } from './helpers/iota-auth-provider'
import {
  IotaResponse,
  IotaResponseCallbackFunction,
  ResponseHandler,
} from './helpers/response-handler'
import {
  CloseVaultParams,
  OpenVaultParams,
  VaultHandler,
} from './helpers/vault-handler'

export type SessionParams = {
  token: string
}

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

    return this.channelProvider.prepareRequest(params)
  }

  prepareRequestWithCallback(
    params: PrepareRequestParams,
    callback: IotaRequestCallbackFunction,
  ) {
    this.isChannelProviderInitialized()
    this.channelProvider.prepareRequestWithCallback(params, callback)
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

  openVault(params: OpenVaultParams) {
    this.vaultHandler.openVault(params)
  }

  closeVault(params: CloseVaultParams) {
    this.vaultHandler.closeVault(params)
  }

  private isChannelProviderInitialized() {
    if (!this.channelProvider) {
      // TODO Error type
      throw new Error('IotaChannelProvider not initialized')
    }
  }
}
