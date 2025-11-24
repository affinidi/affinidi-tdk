## @affinidi-tdk/consumer-iam-client@1.0.0

This generator creates TypeScript/JavaScript client that utilizes [axios](https://github.com/axios/axios). The generated Node module can be used in the following environments:

Environment

- Node.js
- Webpack
- Browserify

Language level

- ES5 - you must have a Promises/A+ library installed
- ES6

Module system

- CommonJS
- ES6 module system

It can be used in both TypeScript and JavaScript. In TypeScript, the definition will be automatically resolved via `package.json`. ([Reference](https://www.typescriptlang.org/docs/handbook/declaration-files/consumption.html))

### Building

To build and compile the typescript sources to javascript use:

```
npm install
npm run build
```

### Publishing

First build the package then run `npm publish`

### Consuming

navigate to the folder of your consuming project and run one of the following commands.

_published:_

```
npm install @affinidi-tdk/consumer-iam-client@1.0.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/cid*

| Class             | Method                                                                             | HTTP request                                 | Description                             |
| ----------------- | ---------------------------------------------------------------------------------- | -------------------------------------------- | --------------------------------------- |
| _AuthzApi_        | [**deleteAccessVfs**](docs/AuthzApi.md#deleteaccessvfs)                            | **DELETE** /v1/authz/vfs/access/{granteeDid} | delete access of granteeDid             |
| _AuthzApi_        | [**grantAccessVfs**](docs/AuthzApi.md#grantaccessvfs)                              | **POST** /v1/authz/vfs/access/{granteeDid}   | Grant access to the virtual file system |
| _AuthzApi_        | [**updateAccessVfs**](docs/AuthzApi.md#updateaccessvfs)                            | **PUT** /v1/authz/vfs/access/{granteeDid}    | Update access of granteeDid             |
| _ConsumerAuthApi_ | [**consumerAuthTokenEndpoint**](docs/ConsumerAuthApi.md#consumerauthtokenendpoint) | **POST** /v1/consumer/oauth2/token           | The Consumer OAuth 2.0 Token Endpoint   |
| _WellKnownApi_    | [**getWellKnownJwks**](docs/WellKnownApi.md#getwellknownjwks)                      | **GET** /.well-known/jwks.json               |

### Documentation For Models

- [ConsumerAuthTokenEndpointInput](docs/ConsumerAuthTokenEndpointInput.md)
- [ConsumerAuthTokenEndpointOutput](docs/ConsumerAuthTokenEndpointOutput.md)
- [CorsConsumerAuthTokenEndpointOK](docs/CorsConsumerAuthTokenEndpointOK.md)
- [GrantAccessInput](docs/GrantAccessInput.md)
- [GrantAccessOutput](docs/GrantAccessOutput.md)
- [InvalidDIDError](docs/InvalidDIDError.md)
- [InvalidJwtTokenError](docs/InvalidJwtTokenError.md)
- [InvalidJwtTokenErrorDetailsInner](docs/InvalidJwtTokenErrorDetailsInner.md)
- [InvalidParameterError](docs/InvalidParameterError.md)
- [JsonWebKeyDto](docs/JsonWebKeyDto.md)
- [JsonWebKeySetDto](docs/JsonWebKeySetDto.md)
- [Permission](docs/Permission.md)
- [RightsEnum](docs/RightsEnum.md)
- [UnauthorizedError](docs/UnauthorizedError.md)
- [UnexpectedError](docs/UnexpectedError.md)
- [UpdateAccessInput](docs/UpdateAccessInput.md)
- [UpdateAccessOutput](docs/UpdateAccessOutput.md)

<a id="documentation-for-authorization"></a>

## Documentation For Authorization

Authentication schemes defined for the API:
<a id="ConsumerTokenAuth"></a>

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

#### Obtaining auth token

💡 To create personal access token (PAT), use Affinidi CLI's [create-token](https://github.com/affinidi/affinidi-cli/blob/main/docs/token.md#affinidi-token-create-token) command.

Login to your Affinidi Vault.

```bash
affinidi login
```

Check for command details if you want to set optional passphrase and keyId:

```bash
affinidi token --help
```

Create PAT:

```bash
affinidi token create-token -n YourTokenName -g -w --no-input
```

This command will return you variables to initialize AuthProvider as required below.

```ts
import { SomeClassApi, Configuration } from '@affinidi-tdk/consumer-iam-client'
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({ tokenId, privateKey, projectId })

const api = new SomeClassApi(
  new Configuration({
    apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
  }),
)

await api.oneOfMethods()
```
