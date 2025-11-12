## @affinidi-tdk/credential-verification-client@1.34.0

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
npm install @affinidi-tdk/credential-verification-client@1.34.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Class        | Method                                                          | HTTP request                     | Description  |
| ------------ | --------------------------------------------------------------- | -------------------------------- | ------------ |
| _DefaultApi_ | [**verifyCredentials**](docs/DefaultApi.md#verifycredentials)   | **POST** /v1/verifier/verify-vcs | Verifying VC |
| _DefaultApi_ | [**verifyPresentation**](docs/DefaultApi.md#verifypresentation) | **POST** /v1/verifier/verify-vp  | Verifying VP |

### Documentation For Models

- [Constraints](docs/Constraints.md)
- [ConstraintsStatuses](docs/ConstraintsStatuses.md)
- [Descriptor](docs/Descriptor.md)
- [ErrorDetail](docs/ErrorDetail.md)
- [EvaluateVpOutput](docs/EvaluateVpOutput.md)
- [Field](docs/Field.md)
- [Filter](docs/Filter.md)
- [FilterConst](docs/FilterConst.md)
- [FilterItems](docs/FilterItems.md)
- [Format](docs/Format.md)
- [HolderSubject](docs/HolderSubject.md)
- [InputDescriptor](docs/InputDescriptor.md)
- [InvalidParameterError](docs/InvalidParameterError.md)
- [JwtObject](docs/JwtObject.md)
- [LdpObject](docs/LdpObject.md)
- [ModelError](docs/ModelError.md)
- [NestedDescriptor](docs/NestedDescriptor.md)
- [NotFoundError](docs/NotFoundError.md)
- [NotFoundErrorDetailsInner](docs/NotFoundErrorDetailsInner.md)
- [PdStatus](docs/PdStatus.md)
- [PresentationDefinition](docs/PresentationDefinition.md)
- [PresentationSubmission](docs/PresentationSubmission.md)
- [SubmissionRequirement](docs/SubmissionRequirement.md)
- [ValidateJwtInput](docs/ValidateJwtInput.md)
- [ValidateJwtOutput](docs/ValidateJwtOutput.md)
- [VerifyCredentialInput](docs/VerifyCredentialInput.md)
- [VerifyCredentialOutput](docs/VerifyCredentialOutput.md)
- [VerifyCredentialV2Input](docs/VerifyCredentialV2Input.md)
- [VerifyPresentationInput](docs/VerifyPresentationInput.md)
- [VerifyPresentationOutput](docs/VerifyPresentationOutput.md)
- [VerifyPresentationV2Input](docs/VerifyPresentationV2Input.md)
- [VerifyPresentationV2InputPexQuery](docs/VerifyPresentationV2InputPexQuery.md)
- [W3cCredentialStatus](docs/W3cCredentialStatus.md)
- [W3cProof](docs/W3cProof.md)

<a id="documentation-for-authorization"></a>

## Documentation For Authorization

Authentication schemes defined for the API:
<a id="UserTokenAuth"></a>

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a id="ProjectTokenAuth"></a>

### ProjectTokenAuth

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
import {
  SomeClassApi,
  Configuration,
} from '@affinidi-tdk/credential-verification-client'
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({ tokenId, privateKey, projectId })

const api = new SomeClassApi(
  new Configuration({
    apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
  }),
)

await api.oneOfMethods()
```
