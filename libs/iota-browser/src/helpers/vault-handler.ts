import { WindowCache } from './window-cache'

export class VaultHandler {
  private cache = new WindowCache()

  public openVault(id: string, link: string, window: Window) {
    const win = window.open(link) // open - opens in a new window
    this.cache.addWindow(id, win)
  }

  public closeVault(id: string) {
    const win = this.cache.getWindow(id)
    if (win) win.close()
    this.cache.deleteWindow(id)
  }
}
