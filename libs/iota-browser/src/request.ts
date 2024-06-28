import { VaultUtils } from '@affinidi-tdk/common'
import { IotaResponseCallbackFunction, OpenMode } from './helpers'
import { VaultHandlerOpenParams } from './helpers/vault-handler'
import { Session } from './session'

export type IotaRequestParams = {
  session: Session
  correlationId: string
  payload: {
    request: string
    client_id: string
  }
}

export type OpenVaultParams = {
  link?: string

  /** @defaultValue NewTab */
  mode?: OpenMode
}

export class IotaRequest {
  private session: Session
  correlationId: string
  payload: {
    request: string
    client_id: string
  }

  constructor(params: IotaRequestParams) {
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
      link: params?.link ?? this.getSuggestedLink(),
      mode: params?.mode,
    }
    this.session.vaultHandler.openVault(handlerHandlerParams)
  }

  getSuggestedLink(): string {
    return VaultUtils.buildShareLink(
      this.payload.request,
      this.payload.client_id,
    )
  }
}
