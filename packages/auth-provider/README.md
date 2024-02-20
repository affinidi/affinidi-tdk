## @affinidi/sdk-auth-provider

### Usage

```bash
npm install @affinidi/sdk-auth-provider --save
```

```ts
import { AuthProvider } from '@affinidi/sdk-auth-provider'

const authProvider = new AuthProvider({
  apiGatewayUrl,
  keyId,
  machineUserId,
  passphrase,
  privateKey,
  publicKey,
  projectId,
  tokenEndpoint,
})

const projectScopedToken = await authProvider.getProjectScopedToken()
```
