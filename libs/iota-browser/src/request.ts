import { IotaUtils } from '@affinidi-tdk/iota-utils'
import { IotaRequest } from './helpers'

export class Request {
  static createVaultLinks(request: IotaRequest): { web: string } {
    const links = IotaUtils.createVaultLinks({ id: request.correlationId, payload: request.payload })

    return {
      web: links.web
    }
  }
}
