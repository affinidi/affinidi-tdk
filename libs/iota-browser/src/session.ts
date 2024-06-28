import {
  ChannelProvider,
  IotaCredentials,
  PrepareRequestParams,
} from './helpers/channel-provider'
import {
  IotaResponse,
  IotaResponseCallbackFunction,
  ResponseHandler,
} from './helpers/response-handler'
import { VaultHandler } from './helpers/vault-handler'
import { IotaRequest } from './request'
import { Logger } from '@affinidi-tdk/common/helpers'

export type SessionParams = {
  credentials: IotaCredentials
}

export type IotaRequestCallbackFunction = (
  err: Error | null,
  data: IotaRequest | null,
) => void

export class Session {
  private channelProvider: ChannelProvider
  private credentials: IotaCredentials
  vaultHandler: VaultHandler

  constructor(params: SessionParams) {
    const { credentials } = params
    this.credentials = credentials
    this.channelProvider = new ChannelProvider()
    this.vaultHandler = new VaultHandler()
  }

  async initialize(): Promise<void> {
    await this.channelProvider.initialize(this.credentials)
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
      const msg = 'Iota session not initialized'
      Logger.debug(msg)
      throw new Error(msg)
    }
  }
}
