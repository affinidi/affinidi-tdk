# affinidi_tdk_vault_data_manager_client (EXPERIMENTAL)

Affinidi TDK dart client for Affinidi VAULT DATA MANAGER

## Requirements

- Dart 2.15.0+
- Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev

To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_vault_data_manager_client: ^1.0.0
```

### Github

This Dart package is published to Github, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_vault_data_manager_client:
    git:
      url: https://github.com/affinidi/affinidi-tdk.git
      ref: main
      path: clients/dart/vault_data_manager_client
```

### Local development

To use the package from your local drive, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_vault_data_manager_client:
    path: /path/to/affinidi_tdk_vault_data_manager_client
```

### Install dependencies

```bash
dart pub get
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';


final api = AffinidiTdkVaultDataManagerClient().getConfigApi();

try {
    final response = await api.getConfig();
    print(response);
} catch on DioException (e) {
    print("Exception when calling ConfigApi->getConfig: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Class                                     | Method                                                                 | HTTP request                                          | Description |
| ----------------------------------------- | ---------------------------------------------------------------------- | ----------------------------------------------------- | ----------- |
| [_ConfigApi_](doc/ConfigApi.md)           | [**getConfig**](doc/ConfigApi.md#getconfig)                            | **GET** /v1/config                                    |
| [_FilesApi_](doc/FilesApi.md)             | [**getScannedFileInfo**](doc/FilesApi.md#getscannedfileinfo)           | **GET** /v1/scanned-files/{scannedFileJobId}          |
| [_FilesApi_](doc/FilesApi.md)             | [**listScannedFiles**](doc/FilesApi.md#listscannedfiles)               | **GET** /v1/scanned-files/                            |
| [_FilesApi_](doc/FilesApi.md)             | [**startFileScan**](doc/FilesApi.md#startfilescan)                     | **POST** /v1/nodes/{nodeId}/file/scan                 |
| [_NodesApi_](doc/NodesApi.md)             | [**createNode**](doc/NodesApi.md#createnode)                           | **POST** /v1/nodes                                    |
| [_NodesApi_](doc/NodesApi.md)             | [**deleteNode**](doc/NodesApi.md#deletenode)                           | **DELETE** /v1/nodes/{nodeId}                         |
| [_NodesApi_](doc/NodesApi.md)             | [**getDetailedNodeInfo**](doc/NodesApi.md#getdetailednodeinfo)         | **GET** /v1/nodes/{nodeId}                            |
| [_NodesApi_](doc/NodesApi.md)             | [**initNodes**](doc/NodesApi.md#initnodes)                             | **POST** /v1/nodes/init                               |
| [_NodesApi_](doc/NodesApi.md)             | [**listNodeChildren**](doc/NodesApi.md#listnodechildren)               | **GET** /v1/nodes/{nodeId}/children                   |
| [_NodesApi_](doc/NodesApi.md)             | [**listRootNodeChildren**](doc/NodesApi.md#listrootnodechildren)       | **GET** /v1/nodes                                     |
| [_NodesApi_](doc/NodesApi.md)             | [**moveNode**](doc/NodesApi.md#movenode)                               | **POST** /v1/nodes/{nodeId}/move                      |
| [_NodesApi_](doc/NodesApi.md)             | [**permanentlyDeleteNode**](doc/NodesApi.md#permanentlydeletenode)     | **DELETE** /v1/nodes/{nodeId}/remove/{nodeIdToRemove} |
| [_NodesApi_](doc/NodesApi.md)             | [**restoreNodeFromTrashbin**](doc/NodesApi.md#restorenodefromtrashbin) | **POST** /v1/nodes/{nodeId}/restore/{nodeIdToRestore} |
| [_NodesApi_](doc/NodesApi.md)             | [**updateNode**](doc/NodesApi.md#updatenode)                           | **PATCH** /v1/nodes/{nodeId}                          |
| [_ProfileDataApi_](doc/ProfileDataApi.md) | [**queryProfileData**](doc/ProfileDataApi.md#queryprofiledata)         | **GET** /v1/nodes/{nodeId}/profile-data               |
| [_ProfileDataApi_](doc/ProfileDataApi.md) | [**updateProfileData**](doc/ProfileDataApi.md#updateprofiledata)       | **PATCH** /v1/nodes/{nodeId}/profile-data             |

## Documentation For Models

- [AwsCredentialExchangeOperationOK](doc/AwsCredentialExchangeOperationOK.md)
- [ConsumerMetadataDto](doc/ConsumerMetadataDto.md)
- [CorsAwsCredentialExchangeOK](doc/CorsAwsCredentialExchangeOK.md)
- [CorsDeleteNodeOK](doc/CorsDeleteNodeOK.md)
- [CorsGetConfigOK](doc/CorsGetConfigOK.md)
- [CorsGetScannedFileInfoOK](doc/CorsGetScannedFileInfoOK.md)
- [CorsGetWellKnownJwksOK](doc/CorsGetWellKnownJwksOK.md)
- [CorsInitNodesOK](doc/CorsInitNodesOK.md)
- [CorsListNodeChildrenOK](doc/CorsListNodeChildrenOK.md)
- [CorsListRootNodeChildrenOK](doc/CorsListRootNodeChildrenOK.md)
- [CorsListScannedFilesOK](doc/CorsListScannedFilesOK.md)
- [CorsMoveNodeOK](doc/CorsMoveNodeOK.md)
- [CorsPermanentlyDeleteNodeOK](doc/CorsPermanentlyDeleteNodeOK.md)
- [CorsRestoreNodeFromTrashbinOK](doc/CorsRestoreNodeFromTrashbinOK.md)
- [CorsStartFileScanOK](doc/CorsStartFileScanOK.md)
- [CorsUpdateProfileDataOK](doc/CorsUpdateProfileDataOK.md)
- [CreateNodeInput](doc/CreateNodeInput.md)
- [CreateNodeOK](doc/CreateNodeOK.md)
- [DeleteNodeDto](doc/DeleteNodeDto.md)
- [EdekInfo](doc/EdekInfo.md)
- [GetConfigOK](doc/GetConfigOK.md)
- [GetDetailedNodeInfoOK](doc/GetDetailedNodeInfoOK.md)
- [GetScannedFileInfoOK](doc/GetScannedFileInfoOK.md)
- [InitNodesOK](doc/InitNodesOK.md)
- [InvalidParameterError](doc/InvalidParameterError.md)
- [InvalidParameterErrorDetailsInner](doc/InvalidParameterErrorDetailsInner.md)
- [JsonWebKeyDto](doc/JsonWebKeyDto.md)
- [JsonWebKeySetDto](doc/JsonWebKeySetDto.md)
- [ListNodeChildrenOK](doc/ListNodeChildrenOK.md)
- [ListRootNodeChildrenOK](doc/ListRootNodeChildrenOK.md)
- [ListScannedFilesOK](doc/ListScannedFilesOK.md)
- [ListScannedFilesOKScannedFilesInner](doc/ListScannedFilesOKScannedFilesInner.md)
- [MoveNodeDto](doc/MoveNodeDto.md)
- [MoveNodeInput](doc/MoveNodeInput.md)
- [NodeDto](doc/NodeDto.md)
- [NodeStatus](doc/NodeStatus.md)
- [NodeType](doc/NodeType.md)
- [NotFoundError](doc/NotFoundError.md)
- [QueryProfileDataOK](doc/QueryProfileDataOK.md)
- [RestoreNodeFromTrashbin](doc/RestoreNodeFromTrashbin.md)
- [StartFileScanInput](doc/StartFileScanInput.md)
- [StartFileScanOK](doc/StartFileScanOK.md)
- [UnexpectedError](doc/UnexpectedError.md)
- [UpdateNodeInput](doc/UpdateNodeInput.md)
- [UpdateProfileDataInput](doc/UpdateProfileDataInput.md)
- [UpdateProfileDataOK](doc/UpdateProfileDataOK.md)

## Documentation For Authorization

Authentication schemes defined for the API:

### AwsSigV4

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

### ApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

### bearerAuth

- **Type**: HTTP Bearer Token authentication (JWT)

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Author

info@affinidi.com
