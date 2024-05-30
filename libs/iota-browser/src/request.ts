import { IotaUtils } from '@affinidi-tdk/iota-utils'
import {
  CloseVaultParams,
  IotaRequestParams,
  IotaResponseCallbackFunction,
  OpenMode,
} from './helpers'
import { Session } from './session'
import { VaultHandlerOpenParams } from './helpers/vault-handler'

type RequestInitializationParams = {
  session: Session
  request: IotaRequestParams
}

type OpenVaultParams = {
  link?: string

  /** @defaultValue NewTab */
  openMode?: OpenMode
}

export class IotaRequest {
  private session: Session
  request: IotaRequestParams

  constructor(params: RequestInitializationParams) {
    this.session = params.session
    this.request = params.request
  }

  async getResponse() {
    return this.session.getResponse(this.request.correlationId)
  }

  getResponseWithCallback(
    correlationId: string,
    callback: IotaResponseCallbackFunction,
  ) {
    this.session.getResponseWithCallback(correlationId, callback)
  }

  openVault(params?: OpenVaultParams) {
    const handlerHandlerParams: VaultHandlerOpenParams = {
      correlationId: this.request.correlationId,
      link: params?.link ?? this.getSuggestedLink(),
      openMode: params?.openMode,
    }
    this.session.vaultHandler.openVault(handlerHandlerParams)
  }

  closeVault(params: CloseVaultParams) {
    this.session.vaultHandler.closeVault(params)
  }

  getSuggestedLink(): string {
    const links = IotaUtils.createVaultLinks(this.request)
    return links.web
  }
}
