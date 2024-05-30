import { IotaUtils } from '@affinidi-tdk/iota-utils'
import {
  CloseVaultParams,
  IotaResponseCallbackFunction,
  OpenMode,
} from './helpers'
import { Session } from './session'
import { VaultHandlerOpenParams } from './helpers/vault-handler'

type RequestInitializationParams = {
  session: Session
  correlationId: string
  payload: {
    request: string
    client_id: string
  }
}

type OpenVaultParams = {
  link?: string

  /** @defaultValue NewTab */
  openMode?: OpenMode
}

export class IotaRequest {
  private session: Session
  correlationId: string
  payload: {
    request: string
    client_id: string
  }

  constructor(params: RequestInitializationParams) {
    this.session = params.session
    this.correlationId = params.correlationId
    this.payload = params.payload
  }

  async getResponse() {
    return this.session.getResponse(this.correlationId)
  }

  getResponseWithCallback(
    correlationId: string,
    callback: IotaResponseCallbackFunction,
  ) {
    this.session.getResponseWithCallback(correlationId, callback)
  }

  openVault(params?: OpenVaultParams) {
    const handlerHandlerParams: VaultHandlerOpenParams = {
      correlationId: this.correlationId,
      link: params?.link ?? this.getSuggestedLink(),
      openMode: params?.openMode,
    }
    this.session.vaultHandler.openVault(handlerHandlerParams)
  }

  closeVault(params: CloseVaultParams) {
    this.session.vaultHandler.closeVault(params)
  }

  getSuggestedLink(): string {
    const links = IotaUtils.createVaultLinks({ payload: this.payload })
    return links.web
  }
}
