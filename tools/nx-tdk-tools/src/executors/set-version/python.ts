import { exec } from 'node:child_process'
import { readFileSync } from 'node:fs'
import { join } from 'node:path'
import { promisify } from 'node:util'
import type { ExecutorContext } from '@nx/devkit'
import { PYTHON_CLIENTS_PATH, TS_CLIENTS_PATH } from './constants'
import type { SetVersionExecutorOptions } from './types'

export async function setVersionPython(
  options: SetVersionExecutorOptions,
  context: ExecutorContext,
) {
  const pythonFolderName = options.packageName.replace(/-/gi, '_')
  const tsFolderName = options.packageName.replace(/_/gi, '-')
  const tsPackageJsonPath = join(
    context.root,
    TS_CLIENTS_PATH,
    tsFolderName,
    'package.json',
  )
  const pythonPackagePath = join(
    context.root,
    PYTHON_CLIENTS_PATH,
    pythonFolderName,
  )

  // Read version from JS package.json
  const packageJson = JSON.parse(readFileSync(tsPackageJsonPath, 'utf-8'))
  const version = packageJson.version

  const { stdout, stderr } = await promisify(exec)(
    `poetry version ${version}`,
    { cwd: pythonPackagePath },
  )

  if (context.isVerbose) {
    console.log(stdout)
    console.error(stderr)
  }
  console.log(
    `Version updated to ${version} for Python package ${options.packageName}`,
  )
  return { success: true }
}
