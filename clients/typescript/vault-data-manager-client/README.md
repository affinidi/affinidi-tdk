## @affinidi-tdk/vault-data-manager-client@1.0.0

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
npm install @affinidi-tdk/vault-data-manager-client@1.0.0 --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Class              | Method                                                                  | HTTP request                                          | Description |
| ------------------ | ----------------------------------------------------------------------- | ----------------------------------------------------- | ----------- |
| _AccountsApi_      | [**createAccount**](docs/AccountsApi.md#createaccount)                  | **POST** /v1/accounts                                 |
| _AccountsApi_      | [**deleteAccount**](docs/AccountsApi.md#deleteaccount)                  | **DELETE** /v1/accounts/{accountIndex}                |
| _AccountsApi_      | [**listAccounts**](docs/AccountsApi.md#listaccounts)                    | **GET** /v1/accounts                                  |
| _AccountsApi_      | [**updateAccount**](docs/AccountsApi.md#updateaccount)                  | **PUT** /v1/accounts/{accountIndex}                   |
| _ConfigurationApi_ | [**getConfiguration**](docs/ConfigurationApi.md#getconfiguration)       | **GET** /v1/config                                    |
| _FilesApi_         | [**getScannedFileInfo**](docs/FilesApi.md#getscannedfileinfo)           | **GET** /v1/scanned-files/{scannedFileJobId}          |
| _FilesApi_         | [**listScannedFiles**](docs/FilesApi.md#listscannedfiles)               | **GET** /v1/scanned-files/                            |
| _FilesApi_         | [**startFileScan**](docs/FilesApi.md#startfilescan)                     | **POST** /v1/nodes/{nodeId}/file/scan                 |
| _NodesApi_         | [**createNode**](docs/NodesApi.md#createnode)                           | **POST** /v1/nodes                                    |
| _NodesApi_         | [**deleteNode**](docs/NodesApi.md#deletenode)                           | **DELETE** /v1/nodes/{nodeId}                         |
| _NodesApi_         | [**getDetailedNodeInfo**](docs/NodesApi.md#getdetailednodeinfo)         | **GET** /v1/nodes/{nodeId}                            |
| _NodesApi_         | [**initNodes**](docs/NodesApi.md#initnodes)                             | **POST** /v1/nodes/init                               |
| _NodesApi_         | [**listNodeChildren**](docs/NodesApi.md#listnodechildren)               | **GET** /v1/nodes/{nodeId}/children                   |
| _NodesApi_         | [**listRootNodeChildren**](docs/NodesApi.md#listrootnodechildren)       | **GET** /v1/nodes                                     |
| _NodesApi_         | [**moveNode**](docs/NodesApi.md#movenode)                               | **POST** /v1/nodes/{nodeId}/move                      |
| _NodesApi_         | [**permanentlyDeleteNode**](docs/NodesApi.md#permanentlydeletenode)     | **DELETE** /v1/nodes/{nodeId}/remove/{nodeIdToRemove} |
| _NodesApi_         | [**restoreNodeFromTrashbin**](docs/NodesApi.md#restorenodefromtrashbin) | **POST** /v1/nodes/{nodeId}/restore/{nodeIdToRestore} |
| _NodesApi_         | [**updateNode**](docs/NodesApi.md#updatenode)                           | **PATCH** /v1/nodes/{nodeId}                          |
| _ProfileDataApi_   | [**queryProfileData**](docs/ProfileDataApi.md#queryprofiledata)         | **GET** /v1/nodes/{nodeId}/profile-data               |
| _ProfileDataApi_   | [**updateProfileData**](docs/ProfileDataApi.md#updateprofiledata)       | **PATCH** /v1/nodes/{nodeId}/profile-data             |
| _WellKnownApi_     | [**getWellKnownJwks**](docs/WellKnownApi.md#getwellknownjwks)           | **GET** /.well-known/jwks.json                        |

### Documentation For Models

- [AccountDto](docs/AccountDto.md)
- [AwsCredentialExchangeOperationOK](docs/AwsCredentialExchangeOperationOK.md)
- [ConsumerMetadataDto](docs/ConsumerMetadataDto.md)
- [CorsAwsCredentialExchangeOK](docs/CorsAwsCredentialExchangeOK.md)
- [CorsDeleteAccountOK](docs/CorsDeleteAccountOK.md)
- [CorsDeleteNodeOK](docs/CorsDeleteNodeOK.md)
- [CorsGetConfigOK](docs/CorsGetConfigOK.md)
- [CorsGetConfigurationOK](docs/CorsGetConfigurationOK.md)
- [CorsGetScannedFileInfoOK](docs/CorsGetScannedFileInfoOK.md)
- [CorsGetWellKnownJwksOK](docs/CorsGetWellKnownJwksOK.md)
- [CorsInitNodesOK](docs/CorsInitNodesOK.md)
- [CorsListAccountsOK](docs/CorsListAccountsOK.md)
- [CorsListNodeChildrenOK](docs/CorsListNodeChildrenOK.md)
- [CorsListRootNodeChildrenOK](docs/CorsListRootNodeChildrenOK.md)
- [CorsListScannedFilesOK](docs/CorsListScannedFilesOK.md)
- [CorsMoveNodeOK](docs/CorsMoveNodeOK.md)
- [CorsPermanentlyDeleteNodeOK](docs/CorsPermanentlyDeleteNodeOK.md)
- [CorsRestoreNodeFromTrashbinOK](docs/CorsRestoreNodeFromTrashbinOK.md)
- [CorsStartFileScanOK](docs/CorsStartFileScanOK.md)
- [CorsUpdateProfileDataOK](docs/CorsUpdateProfileDataOK.md)
- [CreateAccountInput](docs/CreateAccountInput.md)
- [CreateAccountOK](docs/CreateAccountOK.md)
- [CreateNodeInput](docs/CreateNodeInput.md)
- [CreateNodeOK](docs/CreateNodeOK.md)
- [DeleteAccountDto](docs/DeleteAccountDto.md)
- [DeleteNodeDto](docs/DeleteNodeDto.md)
- [EdekInfo](docs/EdekInfo.md)
- [GetConfigOK](docs/GetConfigOK.md)
- [GetDetailedNodeInfoOK](docs/GetDetailedNodeInfoOK.md)
- [GetScannedFileInfoOK](docs/GetScannedFileInfoOK.md)
- [InitNodesOK](docs/InitNodesOK.md)
- [InvalidParameterError](docs/InvalidParameterError.md)
- [InvalidParameterErrorDetailsInner](docs/InvalidParameterErrorDetailsInner.md)
- [JsonWebKeyDto](docs/JsonWebKeyDto.md)
- [JsonWebKeySetDto](docs/JsonWebKeySetDto.md)
- [ListAccountsDto](docs/ListAccountsDto.md)
- [ListNodeChildrenOK](docs/ListNodeChildrenOK.md)
- [ListRootNodeChildrenOK](docs/ListRootNodeChildrenOK.md)
- [ListScannedFilesOK](docs/ListScannedFilesOK.md)
- [ListScannedFilesOKScannedFilesInner](docs/ListScannedFilesOKScannedFilesInner.md)
- [MoveNodeDto](docs/MoveNodeDto.md)
- [MoveNodeInput](docs/MoveNodeInput.md)
- [NodeDto](docs/NodeDto.md)
- [NodeStatus](docs/NodeStatus.md)
- [NodeType](docs/NodeType.md)
- [NotFoundError](docs/NotFoundError.md)
- [QueryProfileDataOK](docs/QueryProfileDataOK.md)
- [RestoreNodeFromTrashbin](docs/RestoreNodeFromTrashbin.md)
- [StartFileScanInput](docs/StartFileScanInput.md)
- [StartFileScanOK](docs/StartFileScanOK.md)
- [UnexpectedError](docs/UnexpectedError.md)
- [UpdateAccountDto](docs/UpdateAccountDto.md)
- [UpdateAccountInput](docs/UpdateAccountInput.md)
- [UpdateNodeInput](docs/UpdateNodeInput.md)
- [UpdateProfileDataInput](docs/UpdateProfileDataInput.md)
- [UpdateProfileDataOK](docs/UpdateProfileDataOK.md)

<a id="documentation-for-authorization"></a>

## Documentation For Authorization

Authentication schemes defined for the API:
<a id="AwsSigV4"></a>

### AwsSigV4

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

<a id="ApiKey"></a>

### ApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

<a id="bearerAuth"></a>

### bearerAuth

- **Type**: Bearer authentication (JWT)

<a id="ConsumerTokenAuth"></a>

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

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
} from '@affinidi-tdk/vault-data-manager-client'
import { AuthProvider } from '@affinidi-tdk/auth-provider'

const authProvider = new AuthProvider({ tokenId, privateKey, projectId })

const api = new SomeClassApi(
  new Configuration({
    apiKey: authProvider.fetchProjectScopedToken.bind(authProvider),
  }),
)

await api.oneOfMethods()
```
