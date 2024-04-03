## @affinidi/tdk-auth-provider

### Build JSII

```
npm i --prefix .
npm run build
npm run package
```

The code will be generated under /dist for each language.

### Usage

### JS

```bash
npm install <path_to_tdk-auth-provider.jsii.tgz>
```

```ts
import { AuthProvider } from '@affinidi/tdk-auth-provider'

const authProvider = new AuthProvider({
  apiGatewayUrl,
  keyId,
  tokenId,
  passphrase,
  privateKey,
  publicKey,
  projectId,
  tokenEndpoint,
})

const projectScopedToken = await authProvider.getProjectScopedToken()
```

### Python

```bash
pip install <path_to_affinidi-tdk-auth-provider.whl>
```

```python
import affinidi_tdk.auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  tokenId,
  passphrase,
  privateKey,
  publicKey,
  projectId,
  tokenEndpoint,
}

authProvider = affinidi_tdk.auth_provider.AuthProvider(stats)

projectScopedToken = authProvider.fetch_project_scoped_token()
```
