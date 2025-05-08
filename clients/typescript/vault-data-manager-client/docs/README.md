# Documentation for VaultFileSystem

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Class            | Method                                                                  | HTTP request                                          | Description                                                                                                                                                                                                                   |
| ---------------- | ----------------------------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| _AccountsApi_    | [**createAccount**](Apis/AccountsApi.md#createaccount)                  | **POST** /v1/accounts                                 | creates account                                                                                                                                                                                                               |
| _AccountsApi_    | [**deleteAccount**](Apis/AccountsApi.md#deleteaccount)                  | **DELETE** /v1/accounts/{accountIndex}                | Delete account.                                                                                                                                                                                                               |
| _AccountsApi_    | [**listAccounts**](Apis/AccountsApi.md#listaccounts)                    | **GET** /v1/accounts                                  | List accounts of associated profiles.                                                                                                                                                                                         |
| _AccountsApi_    | [**updateAccount**](Apis/AccountsApi.md#updateaccount)                  | **PUT** /v1/accounts/{accountIndex}                   | Update account.                                                                                                                                                                                                               |
| _ConfigApi_      | [**getConfig**](Apis/ConfigApi.md#getconfig)                            | **GET** /v1/config                                    | Retrieves the user profile name and the maximum number of profiles, with default values set to 'default' and 1, respectively.                                                                                                 |
| _FilesApi_       | [**getScannedFileInfo**](Apis/FilesApi.md#getscannedfileinfo)           | **GET** /v1/scanned-files/{scannedFileJobId}          | Get the details of a scanned file using the textract jobId                                                                                                                                                                    |
| _FilesApi_       | [**listScannedFiles**](Apis/FilesApi.md#listscannedfiles)               | **GET** /v1/scanned-files/                            | List all the the scanned files with all the details, e.g. status and jobId                                                                                                                                                    |
| _FilesApi_       | [**startFileScan**](Apis/FilesApi.md#startfilescan)                     | **POST** /v1/nodes/{nodeId}/file/scan                 | Start a scan of the file under this node and provide a textract job                                                                                                                                                           |
| _NodesApi_       | [**createNode**](Apis/NodesApi.md#createnode)                           | **POST** /v1/nodes                                    | creates node                                                                                                                                                                                                                  |
| _NodesApi_       | [**deleteNode**](Apis/NodesApi.md#deletenode)                           | **DELETE** /v1/nodes/{nodeId}                         | Mark a node and any attached files for deletion. If the node is a folder, perform the same action for all its children if the profile type is PROFILE, VC_ROOT, or VC. For other node types, move them to the TRASH_BIN node. |
| _NodesApi_       | [**getDetailedNodeInfo**](Apis/NodesApi.md#getdetailednodeinfo)         | **GET** /v1/nodes/{nodeId}                            | Gets detailed information about the node                                                                                                                                                                                      |
| _NodesApi_       | [**initNodes**](Apis/NodesApi.md#initnodes)                             | **POST** /v1/nodes/init                               | Initialize root node, and TRASH_BIN                                                                                                                                                                                           |
| _NodesApi_       | [**listNodeChildren**](Apis/NodesApi.md#listnodechildren)               | **GET** /v1/nodes/{nodeId}/children                   | lists children of the node                                                                                                                                                                                                    |
| _NodesApi_       | [**listRootNodeChildren**](Apis/NodesApi.md#listrootnodechildren)       | **GET** /v1/nodes                                     | lists children of the root node for the consumer                                                                                                                                                                              |
| _NodesApi_       | [**moveNode**](Apis/NodesApi.md#movenode)                               | **POST** /v1/nodes/{nodeId}/move                      | Moves a node from source to destination along with the hierarchy                                                                                                                                                              |
| _NodesApi_       | [**permanentlyDeleteNode**](Apis/NodesApi.md#permanentlydeletenode)     | **DELETE** /v1/nodes/{nodeId}/remove/{nodeIdToRemove} | Permanently delete a node from TRASH_BIN, if the node is not in the TRASH_BIN it cannot delete.                                                                                                                               |
| _NodesApi_       | [**restoreNodeFromTrashbin**](Apis/NodesApi.md#restorenodefromtrashbin) | **POST** /v1/nodes/{nodeId}/restore/{nodeIdToRestore} | Restore node marked for deletion from TRASH_BIN                                                                                                                                                                               |
| _NodesApi_       | [**updateNode**](Apis/NodesApi.md#updatenode)                           | **PATCH** /v1/nodes/{nodeId}                          | Updates a node                                                                                                                                                                                                                |
| _ProfileDataApi_ | [**queryProfileData**](Apis/ProfileDataApi.md#queryprofiledata)         | **GET** /v1/nodes/{nodeId}/profile-data               | Retrieves information from a profile.                                                                                                                                                                                         |
| _ProfileDataApi_ | [**updateProfileData**](Apis/ProfileDataApi.md#updateprofiledata)       | **PATCH** /v1/nodes/{nodeId}/profile-data             | Updates the profile with the given data                                                                                                                                                                                       |
| _WellKnownApi_   | [**getWellKnownJwks**](Apis/WellKnownApi.md#getwellknownjwks)           | **GET** /.well-known/jwks.json                        |                                                                                                                                                                                                                               |

<a name="documentation-for-models"></a>

## Documentation for Models

- [AccountDto](./Models/AccountDto.md)
- [AwsCredentialExchangeOperationOK](./Models/AwsCredentialExchangeOperationOK.md)
- [ConsumerMetadataDto](./Models/ConsumerMetadataDto.md)
- [CorsAwsCredentialExchangeOK](./Models/CorsAwsCredentialExchangeOK.md)
- [CorsDeleteAccountOK](./Models/CorsDeleteAccountOK.md)
- [CorsDeleteNodeOK](./Models/CorsDeleteNodeOK.md)
- [CorsGetConfigOK](./Models/CorsGetConfigOK.md)
- [CorsGetScannedFileInfoOK](./Models/CorsGetScannedFileInfoOK.md)
- [CorsGetWellKnownJwksOK](./Models/CorsGetWellKnownJwksOK.md)
- [CorsInitNodesOK](./Models/CorsInitNodesOK.md)
- [CorsListAccountsOK](./Models/CorsListAccountsOK.md)
- [CorsListNodeChildrenOK](./Models/CorsListNodeChildrenOK.md)
- [CorsListRootNodeChildrenOK](./Models/CorsListRootNodeChildrenOK.md)
- [CorsListScannedFilesOK](./Models/CorsListScannedFilesOK.md)
- [CorsMoveNodeOK](./Models/CorsMoveNodeOK.md)
- [CorsPermanentlyDeleteNodeOK](./Models/CorsPermanentlyDeleteNodeOK.md)
- [CorsRestoreNodeFromTrashbinOK](./Models/CorsRestoreNodeFromTrashbinOK.md)
- [CorsStartFileScanOK](./Models/CorsStartFileScanOK.md)
- [CorsUpdateProfileDataOK](./Models/CorsUpdateProfileDataOK.md)
- [CreateAccountInput](./Models/CreateAccountInput.md)
- [CreateAccountOK](./Models/CreateAccountOK.md)
- [CreateNodeInput](./Models/CreateNodeInput.md)
- [CreateNodeOK](./Models/CreateNodeOK.md)
- [DeleteAccountDto](./Models/DeleteAccountDto.md)
- [DeleteNodeDto](./Models/DeleteNodeDto.md)
- [EdekInfo](./Models/EdekInfo.md)
- [GetConfigOK](./Models/GetConfigOK.md)
- [GetDetailedNodeInfoOK](./Models/GetDetailedNodeInfoOK.md)
- [GetScannedFileInfoOK](./Models/GetScannedFileInfoOK.md)
- [InitNodesOK](./Models/InitNodesOK.md)
- [InvalidParameterError](./Models/InvalidParameterError.md)
- [InvalidParameterError_details_inner](./Models/InvalidParameterError_details_inner.md)
- [JsonWebKeyDto](./Models/JsonWebKeyDto.md)
- [JsonWebKeySetDto](./Models/JsonWebKeySetDto.md)
- [ListAccountsDto](./Models/ListAccountsDto.md)
- [ListNodeChildrenOK](./Models/ListNodeChildrenOK.md)
- [ListRootNodeChildrenOK](./Models/ListRootNodeChildrenOK.md)
- [ListScannedFilesOK](./Models/ListScannedFilesOK.md)
- [ListScannedFilesOK_scannedFiles_inner](./Models/ListScannedFilesOK_scannedFiles_inner.md)
- [MoveNodeDto](./Models/MoveNodeDto.md)
- [MoveNodeInput](./Models/MoveNodeInput.md)
- [NodeDto](./Models/NodeDto.md)
- [NodeStatus](./Models/NodeStatus.md)
- [NodeType](./Models/NodeType.md)
- [NotFoundError](./Models/NotFoundError.md)
- [QueryProfileDataOK](./Models/QueryProfileDataOK.md)
- [RestoreNodeFromTrashbin](./Models/RestoreNodeFromTrashbin.md)
- [StartFileScanInput](./Models/StartFileScanInput.md)
- [StartFileScanOK](./Models/StartFileScanOK.md)
- [UnexpectedError](./Models/UnexpectedError.md)
- [UpdateAccountDto](./Models/UpdateAccountDto.md)
- [UpdateAccountInput](./Models/UpdateAccountInput.md)
- [UpdateNodeInput](./Models/UpdateNodeInput.md)
- [UpdateProfileDataInput](./Models/UpdateProfileDataInput.md)
- [UpdateProfileDataOK](./Models/UpdateProfileDataOK.md)

<a name="documentation-for-authorization"></a>

## Documentation for Authorization

<a name="AwsSigV4"></a>

### AwsSigV4

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

<a name="ApiKey"></a>

### ApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

<a name="bearerAuth"></a>

### bearerAuth

- **Type**: HTTP Bearer Token authentication (JWT)

<a name="ConsumerTokenAuth"></a>

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a name="UserTokenAuth"></a>

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a name="ProjectTokenAuth"></a>

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header
