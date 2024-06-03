## @affinidi-tdk/wallets-client

### Service API Endpoints and Models

Please check [the documentation for API Endpoints and Models](https://github.com/affinidi/affinidi-tdk/tree/main/clients/typescript/wallets-client/docs/README.md) for more details.

### Usage

```bash
npm install @affinidi-tdk/wallets-client --save
```

#### Http Client settings

We use [Axios plugin](https://github.com/softonic/axios-retry) that intercepts failed requests and retries them whenever possible.

You can configure some of retry parameters:

| Name               | Type      | Default | Description                                                                                                                                                                                                                                                                      |
| ------------------ | --------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| retries            | `Number`  | `3`     | The number of times to retry before failing. 1 = One retry after first failure. The number can be between 0 and 3.                                                                                                                                                               |
| isExponentialDelay | `Boolean` | `false` | By default there is no delay between retries. When option is set to true (See [Exponential Backoff](https://developers.google.com/analytics/devguides/reporting/core/v3/errors#backoff)), the client will periodically retry a failed request over an increasing amount of time. |

Please note that retry condition is not configurable and axios-retry default value is used `isNetworkOrIdempotentRequestError`. It retries if it is a network error or a 5xx error on an idempotent request (GET, HEAD, OPTIONS, PUT or DELETE).

#### With project scoped token and a custom Http client settings

```ts
import { SomeClassApi, Configuration } from '@affinidi-tdk/wallets-client'

const projectScopedToken = '...' // NOTE: you can get it after making Affinidi Login (via CLI, Dev Portal)

const retryConfig = {
  retries: 2,
  isExponentialDelay: true,
}

const api = new SomeClassApi(
  new Configuration({
    apiKey: projectScopedToken,
    basePath: `${apiGatewayUrl}/`,
  }),
  retryConfig,
)

await api.oneOfMethods()
```

#### With PAT

💡 To create PAT, use Affinidi CLI's [create-token](https://github.com/affinidi/affinidi-cli/blob/main/docs/token.md#affinidi-token-create-token) command.

```sh
affinidi token create-token -n MyNewToken -w -p YOUR-SECRET-PASSPHRASE
```

This command will return you variables to initialize AuthProvider as required below.

```ts
import { SomeClassApi, Configuration } from '@affinidi-tdk/wallets-client'
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

const api = new SomeClassApi(
  new Configuration({
    apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
    basePath: `${apiGatewayUrl}/`,
  }),
)

await api.oneOfMethods()
```

#### With session ID via BFF

```ts
import { SomeClassApi, Configuration } from '@affinidi-tdk/wallets-client'
import { getBffHeaders } from '@affinidi/test-auth-provider'

const headers = getBffHeaders(cookieName, sessionId)

const baseOptions = { headers }

const api = new SomeClassApi(
  new Configuration({ basePath: `${bffHost}/`, baseOptions }),
)

await api.oneOfMethods()
```
