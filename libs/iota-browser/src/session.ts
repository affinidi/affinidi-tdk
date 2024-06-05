import { IotaCredentials } from '@affinidi-tdk/iota-utils'
import {
  ChannelProvider,
  PrepareRequestParams,
} from './helpers/channel-provider'
import {
  IotaResponse,
  IotaResponseCallbackFunction,
  ResponseHandler,
} from './helpers/response-handler'
import { VaultHandler } from './helpers/vault-handler'
import { IotaRequest } from './request'

export type SessionParams = {
  credentials: IotaCredentials
}
// TODO Error type
export type IotaRequestCallbackFunction = (
  err: Error | null,
  data: IotaRequest | null,
) => void

export class Session {
  channelProvider: ChannelProvider
  vaultHandler: VaultHandler
  credentials: IotaCredentials

  constructor(params: SessionParams) {
    const { credentials } = params
    this.credentials = credentials
    this.channelProvider = new ChannelProvider()
    this.vaultHandler = new VaultHandler()
  }

  async initialize(): Promise<void> {
    try {
      await this.channelProvider.initialize(this.credentials)
    } catch (error) {
      console.error('Error initializing IotaChannelProvider:', error)
    }
  }

  async prepareRequest(params: PrepareRequestParams): Promise<IotaRequest> {
    this.isChannelProviderInitialized()
    const iotaRequest = await this.channelProvider.prepareRequest(params)
    const request = new IotaRequest({
      session: this,
      correlationId: iotaRequest.correlationId,
      payload: iotaRequest.payload,
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
    return responseHandler.getResponse(correlationId)
  }

  getResponseWithCallback(
    correlationId: string,
    callback: IotaResponseCallbackFunction,
  ) {
    this.isChannelProviderInitialized()
    const responseHandler = new ResponseHandler(this.channelProvider)
    responseHandler.getResponseWithCallback(correlationId, callback)
  }

  private isChannelProviderInitialized() {
    if (!this.channelProvider) {
      // TODO Error type
      throw new Error('IotaChannelProvider not initialized')
    }
  }
}
