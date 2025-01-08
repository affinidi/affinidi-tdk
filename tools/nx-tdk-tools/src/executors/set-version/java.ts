import { exec } from 'node:child_process'
import { readFileSync } from 'node:fs'
import { join } from 'node:path'
import { promisify } from 'node:util'
import type { ExecutorContext } from '@nx/devkit'
import { JAVA_CLIENTS_PATH, TS_CLIENTS_PATH } from './constants'
import type { SetVersionExecutorOptions } from './types'

export async function setVersionJava(
  options: SetVersionExecutorOptions,
  context: ExecutorContext,
) {
  throw new Error('Not iMplemented')
  return { success: true }
}
