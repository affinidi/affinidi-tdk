## @affinidi/client-dcf

### Usage

```bash
npm install @affinidi/client-dcf --save
```

#### With project scoped token

```ts
import { SomeClassApi, Configuration } from '@affinidi/client-dcf';

const projectScopedToken = '...'; // NOTE: you can get it after making Affinidi Login (via CLI, Portal)

const api = new SomeClassApi(
  new Configuration({
    apiKey: projectScopedToken,
    basePath: `${apiGatewayUrl}/dcf`,
  })
);

await api.oneOfMethods();
```

#### With PAT

To call service methods with personal access token, you need to get a getProjectScopedToken for the machine user:

```ts
import { SomeClassApi, Configuration } from '@affinidi/client-dcf';
import { AuthProvider } from '@affinidi/test-auth-provider';

const authProvider = new AuthProvider({
  apiGatewayUrl,
  keyId,
  machineUserId,
  passphrase,
  privateKey,
  publicKey,
  projectId,
  tokenEndpoint,
});

const api = new SomeClassApi(
  new Configuration({
    apiKey: authProvider.getProjectScopedToken.bind(authProvider),
    basePath: `${apiGatewayUrl}/dcf`,
  })
);

await api.oneOfMethods();
```

#### With session ID via BFF

```ts
import { SomeClassApi, Configuration } from '@affinidi/client-dcf';
import { getBffHeaders } from '@affinidi/test-auth-provider';

const headers = getBffHeaders(cookieName, sessionId);

const baseOptions = { headers };

const api = new SomeClassApi(
  new Configuration({ basePath: `${bffHost}/dcf`, baseOptions })
);

await api.oneOfMethods();
```