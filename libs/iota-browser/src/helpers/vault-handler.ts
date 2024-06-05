export enum OpenMode {
  NewTab,
  Popup,
}

export type VaultHandlerOpenParams = {
  link: string

  /** @defaultValue NewTab */
  mode?: OpenMode
}

export class VaultHandler {
  public openVault(params: VaultHandlerOpenParams) {
    var { link, mode = OpenMode.NewTab } = params
    let windowFeatures = ''
    if (mode === OpenMode.Popup) {
      const width = 450
      const height = 800
      const left = (window.screen.width - width) / 2
      const top = (window.screen.height - height) / 2
      windowFeatures = `popup=true,width=${width},height=${height},left=${left},top=${top}`
    }
    window.open(link, '_blank', windowFeatures)
  }
}
