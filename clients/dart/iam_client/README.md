# affinidi_tdk_iam_client (EXPERIMENTAL)

Affinidi TDK dart client for Affinidi IAM

## Requirements

- Dart 2.15.0+
- Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev

To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_iam_client: ^1.0.0
```

### Github

This Dart package is published to Github, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_iam_client:
    git:
      url: https://github.com/affinidi/affinidi-tdk.git
      ref: main
      path: clients/dart/iam_client
```

### Local development

To use the package from your local drive, please include the following in pubspec.yaml

```yaml
dependencies:
  affinidi_tdk_iam_client:
    path: /path/to/affinidi_tdk_iam_client
```

### Install dependencies

```bash
dart pub get
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';


final api = AffinidiTdkIamClient().getAuthzApi();
final String subjectDID = subjectDID_example; // String |

try {
    api.deleteAccessVfs(subjectDID);
} catch on DioException (e) {
    print("Exception when calling AuthzApi->deleteAccessVfs: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Class                                       | Method                                                                            | HTTP request                                     | Description                             |
| ------------------------------------------- | --------------------------------------------------------------------------------- | ------------------------------------------------ | --------------------------------------- |
| [_AuthzApi_](doc/AuthzApi.md)               | [**deleteAccessVfs**](doc/AuthzApi.md#deleteaccessvfs)                            | **DELETE** /v1/authz/vfs/access/{subjectDID}     | delete access of subjectDiD             |
| [_AuthzApi_](doc/AuthzApi.md)               | [**grantAccessVfs**](doc/AuthzApi.md#grantaccessvfs)                              | **POST** /v1/authz/vfs/access                    | Grant access to the virtual file system |
| [_AuthzApi_](doc/AuthzApi.md)               | [**updateAccessVfs**](doc/AuthzApi.md#updateaccessvfs)                            | **PUT** /v1/authz/vfs/access/{subjectDID}        | Update access of subjectDiD             |
| [_ConsumerAuthApi_](doc/ConsumerAuthApi.md) | [**consumerAuthTokenEndpoint**](doc/ConsumerAuthApi.md#consumerauthtokenendpoint) | **POST** /v1/consumer/oauth2/token               | The Consumer OAuth 2.0 Token Endpoint   |
| [_DefaultApi_](doc/DefaultApi.md)           | [**v1AuthProxyDelete**](doc/DefaultApi.md#v1authproxydelete)                      | **DELETE** /v1/auth/{proxy+}                     |
| [_DefaultApi_](doc/DefaultApi.md)           | [**v1AuthProxyGet**](doc/DefaultApi.md#v1authproxyget)                            | **GET** /v1/auth/{proxy+}                        |
| [_DefaultApi_](doc/DefaultApi.md)           | [**v1AuthProxyPatch**](doc/DefaultApi.md#v1authproxypatch)                        | **PATCH** /v1/auth/{proxy+}                      |
| [_DefaultApi_](doc/DefaultApi.md)           | [**v1AuthProxyPost**](doc/DefaultApi.md#v1authproxypost)                          | **POST** /v1/auth/{proxy+}                       |
| [_DefaultApi_](doc/DefaultApi.md)           | [**v1AuthProxyPut**](doc/DefaultApi.md#v1authproxyput)                            | **PUT** /v1/auth/{proxy+}                        |
| [_DefaultApi_](doc/DefaultApi.md)           | [**v1IdpProxyDelete**](doc/DefaultApi.md#v1idpproxydelete)                        | **DELETE** /v1/idp/{proxy+}                      |
| [_DefaultApi_](doc/DefaultApi.md)           | [**v1IdpProxyGet**](doc/DefaultApi.md#v1idpproxyget)                              | **GET** /v1/idp/{proxy+}                         |
| [_DefaultApi_](doc/DefaultApi.md)           | [**v1IdpProxyPatch**](doc/DefaultApi.md#v1idpproxypatch)                          | **PATCH** /v1/idp/{proxy+}                       |
| [_DefaultApi_](doc/DefaultApi.md)           | [**v1IdpProxyPost**](doc/DefaultApi.md#v1idpproxypost)                            | **POST** /v1/idp/{proxy+}                        |
| [_DefaultApi_](doc/DefaultApi.md)           | [**v1IdpProxyPut**](doc/DefaultApi.md#v1idpproxyput)                              | **PUT** /v1/idp/{proxy+}                         |
| [_PoliciesApi_](doc/PoliciesApi.md)         | [**getPolicies**](doc/PoliciesApi.md#getpolicies)                                 | **GET** /v1/policies/principals/{principalId}    |
| [_PoliciesApi_](doc/PoliciesApi.md)         | [**updatePolicies**](doc/PoliciesApi.md#updatepolicies)                           | **PUT** /v1/policies/principals/{principalId}    |
| [_ProjectsApi_](doc/ProjectsApi.md)         | [**addPrincipalToProject**](doc/ProjectsApi.md#addprincipaltoproject)             | **POST** /v1/projects/principals                 |
| [_ProjectsApi_](doc/ProjectsApi.md)         | [**createProject**](doc/ProjectsApi.md#createproject)                             | **POST** /v1/projects                            |
| [_ProjectsApi_](doc/ProjectsApi.md)         | [**deletePrincipalFromProject**](doc/ProjectsApi.md#deleteprincipalfromproject)   | **DELETE** /v1/projects/principals/{principalId} |
| [_ProjectsApi_](doc/ProjectsApi.md)         | [**listPrincipalsOfProject**](doc/ProjectsApi.md#listprincipalsofproject)         | **GET** /v1/projects/principals                  |
| [_ProjectsApi_](doc/ProjectsApi.md)         | [**listProject**](doc/ProjectsApi.md#listproject)                                 | **GET** /v1/projects                             |
| [_ProjectsApi_](doc/ProjectsApi.md)         | [**updateProject**](doc/ProjectsApi.md#updateproject)                             | **PATCH** /v1/projects/{projectId}               |
| [_StsApi_](doc/StsApi.md)                   | [**createProjectScopedToken**](doc/StsApi.md#createprojectscopedtoken)            | **POST** /v1/sts/create-project-scoped-token     |
| [_StsApi_](doc/StsApi.md)                   | [**whoami**](doc/StsApi.md#whoami)                                                | **GET** /v1/sts/whoami                           |
| [_TokensApi_](doc/TokensApi.md)             | [**createToken**](doc/TokensApi.md#createtoken)                                   | **POST** /v1/tokens                              |
| [_TokensApi_](doc/TokensApi.md)             | [**deleteToken**](doc/TokensApi.md#deletetoken)                                   | **DELETE** /v1/tokens/{tokenId}                  |
| [_TokensApi_](doc/TokensApi.md)             | [**getToken**](doc/TokensApi.md#gettoken)                                         | **GET** /v1/tokens/{tokenId}                     |
| [_TokensApi_](doc/TokensApi.md)             | [**listProjectsOfToken**](doc/TokensApi.md#listprojectsoftoken)                   | **GET** /v1/tokens/{tokenId}/projects            |
| [_TokensApi_](doc/TokensApi.md)             | [**listToken**](doc/TokensApi.md#listtoken)                                       | **GET** /v1/tokens                               |
| [_TokensApi_](doc/TokensApi.md)             | [**updateToken**](doc/TokensApi.md#updatetoken)                                   | **PATCH** /v1/tokens/{tokenId}                   |
| [_WellKnownApi_](doc/WellKnownApi.md)       | [**getWellKnownDid**](doc/WellKnownApi.md#getwellknowndid)                        | **GET** /.well-known/did.json                    |
| [_WellKnownApi_](doc/WellKnownApi.md)       | [**getWellKnownJwks**](doc/WellKnownApi.md#getwellknownjwks)                      | **GET** /.well-known/jwks.json                   |

## Documentation For Models

- [ActionForbiddenError](doc/ActionForbiddenError.md)
- [AddUserToProjectInput](doc/AddUserToProjectInput.md)
- [ConsumerAuthTokenEndpointInput](doc/ConsumerAuthTokenEndpointInput.md)
- [ConsumerAuthTokenEndpointOutput](doc/ConsumerAuthTokenEndpointOutput.md)
- [CorsConsumerAuthTokenEndpointOK](doc/CorsConsumerAuthTokenEndpointOK.md)
- [CreateProjectInput](doc/CreateProjectInput.md)
- [CreateProjectScopedTokenInput](doc/CreateProjectScopedTokenInput.md)
- [CreateProjectScopedTokenOutput](doc/CreateProjectScopedTokenOutput.md)
- [CreateTokenInput](doc/CreateTokenInput.md)
- [DeleteAccessOutput](doc/DeleteAccessOutput.md)
- [GetWellKnownDidOK](doc/GetWellKnownDidOK.md)
- [GrantAccessInput](doc/GrantAccessInput.md)
- [GrantAccessOutput](doc/GrantAccessOutput.md)
- [InvalidDIDError](doc/InvalidDIDError.md)
- [InvalidJwtTokenError](doc/InvalidJwtTokenError.md)
- [InvalidParameterError](doc/InvalidParameterError.md)
- [JsonWebKeyDto](doc/JsonWebKeyDto.md)
- [JsonWebKeySetDto](doc/JsonWebKeySetDto.md)
- [NotFoundError](doc/NotFoundError.md)
- [PolicyDto](doc/PolicyDto.md)
- [PolicyStatementDto](doc/PolicyStatementDto.md)
- [PrincipalCannotBeDeletedError](doc/PrincipalCannotBeDeletedError.md)
- [PrincipalDoesNotBelongToProjectError](doc/PrincipalDoesNotBelongToProjectError.md)
- [ProjectDto](doc/ProjectDto.md)
- [ProjectList](doc/ProjectList.md)
- [ProjectWithPolicyDto](doc/ProjectWithPolicyDto.md)
- [ProjectWithPolicyList](doc/ProjectWithPolicyList.md)
- [PublicKeyCannotBeResolvedFromDidError](doc/PublicKeyCannotBeResolvedFromDidError.md)
- [ServiceErrorResponse](doc/ServiceErrorResponse.md)
- [ServiceErrorResponseDetailsInner](doc/ServiceErrorResponseDetailsInner.md)
- [TokenAuthenticationMethodDto](doc/TokenAuthenticationMethodDto.md)
- [TokenDto](doc/TokenDto.md)
- [TokenList](doc/TokenList.md)
- [TokenPrivateKeyAuthenticationMethodDto](doc/TokenPrivateKeyAuthenticationMethodDto.md)
- [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo](doc/TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.md)
- [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf](doc/TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.md)
- [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1](doc/TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1.md)
- [TypedPrincipalId](doc/TypedPrincipalId.md)
- [UnauthorizedError](doc/UnauthorizedError.md)
- [UnexpectedError](doc/UnexpectedError.md)
- [UpdateAccessInput](doc/UpdateAccessInput.md)
- [UpdateAccessOutput](doc/UpdateAccessOutput.md)
- [UpdateProjectInput](doc/UpdateProjectInput.md)
- [UpdateTokenInput](doc/UpdateTokenInput.md)
- [UpdateTokenPrivateKeyAuthenticationMethodDto](doc/UpdateTokenPrivateKeyAuthenticationMethodDto.md)
- [UserDto](doc/UserDto.md)
- [UserList](doc/UserList.md)
- [WhoamiDto](doc/WhoamiDto.md)

## Documentation For Authorization

Authentication schemes defined for the API:

### HeritageTokenAuth

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

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Author

info@affinidi.com
