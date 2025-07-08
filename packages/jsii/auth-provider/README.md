# @affinidi-tdk/auth-provider

Affinidi TDK internal module for managing access token (project scoped token) to Affinidi services via Affinidi TDK clients.

## Pre-requisites

To initialize AuthProvider, Personal Access Token (PAT) details should be provided.
To create PAT, use Affinidi CLI's [create-token](https://github.com/affinidi/affinidi-cli/blob/main/docs/token.md#affinidi-token-create-token) command.

```sh
affinidi token create-token -n MyNewToken -w -p YOUR-SECRET-PASSPHRASE
```

This command will return you variables to initialize AuthProvider.


## Install

### Javascript

```bash
npm install @affinidi-tdk/auth-provider
```

## Python

### Install Python package

run inside [python virtual env](https://docs.python.org/3/library/venv.html)

```bash
pip install affinidi_tdk_auth_provider
```

## Usage

### Python package usage

```python
import affinidi_tdk_auth_provider

stats = {
  keyId,
  tokenId,
  passphrase,
  privateKey,
  projectId,
}

authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)

projectScopedToken = authProvider.fetch_project_scoped_token()
```

### Javascript package usage

```ts
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({
  keyId,
  tokenId,
  passphrase,
  privateKey,
  projectId,
})

const projectScopedToken = await authProvider.fetchProjectScopedToken()
```
