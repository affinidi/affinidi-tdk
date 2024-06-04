export class WindowCache {
  private cache: { [key: string]: any } = {}

  public addWindow(id: string, window: any) {
    this.cache[id] = window
  }
  public getWindow(id: string): any {
    return this.cache[id]
  }
  public deleteWindow(id: string) {
    return delete this.cache[id]
  }
}
