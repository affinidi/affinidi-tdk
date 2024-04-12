import { Message } from './helpers/message'

export class HelloWorld {
  message: Message
  constructor() {
    this.message = new Message()
  }
  public generateMessage(name: string) {
    return this.message.getMessage(name)
  }
}
