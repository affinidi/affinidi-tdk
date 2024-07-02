# @affinidi-tdk/auth-provider

Affinidi TDK Internal module for managing access tokens.

## Javascript

### Install

```bash
npm install @affinidi-tdk/auth-provider
```

### Usage

```ts
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({
  apiGatewayUrl,
  keyId,
  tokenId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
})

const projectScopedToken = await authProvider.fetchProjectScopedToken()
```

## Python

### Build JSII python package

This is step is required, as python package is not published to pypi.org yet

```bash
git clone git@github.com:affinidi/affinidi-tdk.git
cd packages/auth-provider/
npm i --prefix .
npm run build
npm run package
```

### Install Python package

After Build Step, run inside [python virtual env](https://docs.python.org/3/library/venv.html)

```bash
pip install dist/python/affinidi_tdk_auth_provider-0.1.4-py3-none-any.whl
```

### Python package usage

```python
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  tokenId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
}

authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)

projectScopedToken = authProvider.fetch_project_scoped_token()
```
