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

function buildShareLinkInternal(
  url: string,
  request: string,
  client_id: string,
): string {
  const params = new URLSearchParams()
  params.append('request', request)
  params.append('client_id', client_id)
  const queryString = params.toString()
  return `${url}/login?${queryString}`
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
    if (typeof window !== 'undefined' && window.localStorage) {
      const vaultUrl = window.localStorage.getItem('affinidiVaultUrl')
      if (vaultUrl) {
        return buildShareLinkInternal(
          vaultUrl,
          this.payload.request,
          this.payload.client_id,
        )
      }
    }
    return VaultUtils.buildShareLink(
      this.payload.request,
      this.payload.client_id,
    )
  }
}
