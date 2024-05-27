import { ChannelProvider, IotaRequest, PrepareRequestParams } from './helpers/channel-provider'
import { IotaAuthProvider } from './helpers/iota-auth-provider'
import { IotaResponse, ResponseHandler } from './helpers/response-handler'
import { VaultHandler } from './helpers/vault-handler'

export class Session {
  channelProvider: ChannelProvider
  token: string

  constructor(params: any) {
    const { token } = params

    this.token = token
    const iotaAuthProvider = new IotaAuthProvider()

    this.channelProvider = new ChannelProvider({
      iotaAuthProvider,
    })
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

  prepareRequestWithCallback(params: PrepareRequestParams, callback: any) {
    this.isChannelProviderInitialized()
    this.channelProvider.prepareRequestWithCallback(params, callback)
  }

  async getResponse(correlationId: string, vaultHandler: VaultHandler): Promise<IotaResponse> {
    this.isChannelProviderInitialized()
    const responseHandler = new ResponseHandler(this.channelProvider)
    return responseHandler.getResponse(correlationId, vaultHandler)
  }

  getResponseWithCallback(correlationId: string, vaultHandler: VaultHandler, callback: any) {
    this.isChannelProviderInitialized()
    const responseHandler = new ResponseHandler(this.channelProvider)
    responseHandler.getResponseWithCallback(correlationId, vaultHandler, callback)
  }

  private isChannelProviderInitialized() {
    if (!this.channelProvider) {
      throw new Error('IotaChannelProvider not initialized')
    }
  }
}
