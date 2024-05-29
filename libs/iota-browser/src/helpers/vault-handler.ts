import { WindowCache } from './window-cache'

export enum OpenMode {
  NewTab,
  Popup,
}

export type OpenVaultParams = {
  correlationId: string
  link: string

  /** @defaultValue NewTab */
  openMode?: OpenMode
}

export type CloseVaultParams = {
  correlationId: string
}

export class VaultHandler {
  private cache = new WindowCache()

  public openVault(params: OpenVaultParams) {
    var { correlationId, link, openMode = OpenMode.NewTab } = params
    let windowFeatures = ''
    if (openMode === OpenMode.Popup) {
      const width = 800
      const height = 1000
      const left = (window.screen.width - width) / 2
      const top = (window.screen.height - height) / 2
      windowFeatures = `popup=true,width=${width},height=${height},left=${left},top=${top}`
    }
    const win = window.open(link, '_blank', windowFeatures)
    this.cache.addWindow(correlationId, win)
  }

  public closeVault(params: CloseVaultParams) {
    const win = this.cache.getWindow(params.correlationId)
    if (win) win.close()
    this.cache.deleteWindow(params.correlationId)
  }
}
