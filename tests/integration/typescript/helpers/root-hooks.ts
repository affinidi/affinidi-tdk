import { clearWallets } from './index'

// Runs once before all test files
export const mochaHooks = {
  async beforeAll() {
    await clearWallets()
  },
}
