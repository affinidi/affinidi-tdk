## @affinidi/tdk-client-kms

### Usage

```bash
npm install @affinidi/tdk-client-kms --save
```

#### With PAT

To call service methods with personal access token, you need to get a getProjectScopedToken for the machine user:

```ts
import { SomeClassApi, Configuration } from '@affinidi/tdk-client-kms';
import { authProvider } from '@affinidi/test-auth-provider';

const projectScopedToken = await authProvider.getProjectScopedToken({
  apiGatewayUrl,
  projectId,
  machineUserId,
  tokenEndpoint,
  privateKey,
  passphrase,
  keyId,
  publicKey,
});

const api = new SomeClassApi(
  new Configuration({
    apiKey: projectScopedToken,
    basePath: `${apiGatewayUrl}/kms`,
  })
);

await api.oneOfMethods();
```

#### With session ID via BFF

```ts
import { SomeClassApi, Configuration } from '@affinidi/tdk-client-kms';
import { getBffHeaders } from '@affinidi/test-auth-provider';

const headers = getBffHeaders(cookieName, sessionId);

const baseOptions = { headers };

const api = new SomeClassApi(
  new Configuration({ basePath: `${bffHost}/kms`, baseOptions })
);

await api.oneOfMethods();
```
