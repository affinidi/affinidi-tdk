## @affinidi/sdk-client-cwe

### Usage

```bash
npm install @affinidi/sdk-client-cwe --save
```

#### With PAT

To call service methods with personal access token, you need to get a getProjectScopedToken for the machine user:

```ts
import { SomeClassApi, Configuration } from '@affinidi/sdk-client-cwe';
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
    basePath: `${apiGatewayUrl}/cwe`,
  })
);

await api.oneOfMethods();
```

#### With session ID via BFF

```ts
import { SomeClassApi, Configuration } from '@affinidi/sdk-client-cwe';
import { getBffHeaders } from '@affinidi/test-auth-provider';

const headers = getBffHeaders(cookieName, sessionId);

const baseOptions = { headers };

const api = new SomeClassApi(
  new Configuration({ basePath: `${bffHost}/cwe`, baseOptions })
);

await api.oneOfMethods();
```
