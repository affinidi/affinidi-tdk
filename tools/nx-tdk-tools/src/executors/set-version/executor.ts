import { ExecutorContext } from '@nrwl/devkit'
import { readFileSync } from 'fs'
import { join } from 'path'
import { exec } from 'child_process'
import { promisify } from 'util'

const PYTHON_CLIENTS_PATH = 'clients/python'
const TS_CLIENTS_PATH = 'clients/typescript'

interface SetVersionExecutorOptions {
  packageName: string
}

export default async function setVersionExecutor(
  options: SetVersionExecutorOptions,
  context: ExecutorContext,
): Promise<{ success: boolean }> {
  const pythonFolderName = options.packageName.replace('-', '_')
  const tsFolderName = options.packageName.replace('_', '-')
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
