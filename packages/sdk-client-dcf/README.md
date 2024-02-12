## @affinidi/test-sdk-client-dcf

### Usage

```bash
npm install @affinidi/test-sdk-client-dcf --save
```

#### With PAT

To call service methods with personal access token, you need to get a getProjectScopedToken for the machine user:

```ts
import { SomeClassApi, Configuration } from '@affinidi/test-sdk-client-dcf';
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
    basePath: `${apiGatewayUrl}/dcf`,
  })
);

await api.oneOfMethods();
```

#### With session ID via BFF

```ts
import { SomeClassApi, Configuration } from '@affinidi/test-sdk-client-dcf';
import { getBffHeaders } from '@affinidi/test-auth-provider';

const headers = getBffHeaders(cookieName, sessionId);

const baseOptions = { headers };

const api = new SomeClassApi(
  new Configuration({ basePath: `${bffHost}/dcf`, baseOptions })
);

await api.oneOfMethods();
```
