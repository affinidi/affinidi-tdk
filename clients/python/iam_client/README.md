# affinidi_tdk_iam_client

Affinidi IAM

This Python package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.PythonPydanticV1ClientCodegen

## Requirements.

Python 3.7+

## Installation & Usage

### pip install

If the python package is hosted on a repository, you can install directly using:

```sh
pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git`)

Then import the package:

```python
import affinidi_tdk_iam_client
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```

(or `sudo python setup.py install` to install the package for all users)

Then import the package:

```python
import affinidi_tdk_iam_client
```

### Tests

Execute `pytest` to run the tests.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python

import time
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)



# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.ConsumerAuthApi(api_client)
    consumer_auth_token_endpoint_input = affinidi_tdk_iam_client.ConsumerAuthTokenEndpointInput() # ConsumerAuthTokenEndpointInput | ConsumerAuthTokenEndpoint

    try:
        # The Consumer OAuth 2.0 Token Endpoint
        api_response = api_instance.consumer_auth_token_endpoint(consumer_auth_token_endpoint_input)
        print("The response of ConsumerAuthApi->consumer_auth_token_endpoint:\n")
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ConsumerAuthApi->consumer_auth_token_endpoint: %s\n" % e)

```

## Documentation for API Endpoints

All URIs are relative to _http://localhost_

| Class             | Method                                                                                   | HTTP request                                     | Description                           |
| ----------------- | ---------------------------------------------------------------------------------------- | ------------------------------------------------ | ------------------------------------- |
| _ConsumerAuthApi_ | [**consumer_auth_token_endpoint**](docs/ConsumerAuthApi.md#consumer_auth_token_endpoint) | **POST** /v1/consumer/oauth2/token               | The Consumer OAuth 2.0 Token Endpoint |
| _DefaultApi_      | [**v1_auth_proxy_delete**](docs/DefaultApi.md#v1_auth_proxy_delete)                      | **DELETE** /v1/auth/{proxy+}                     |
| _DefaultApi_      | [**v1_auth_proxy_get**](docs/DefaultApi.md#v1_auth_proxy_get)                            | **GET** /v1/auth/{proxy+}                        |
| _DefaultApi_      | [**v1_auth_proxy_patch**](docs/DefaultApi.md#v1_auth_proxy_patch)                        | **PATCH** /v1/auth/{proxy+}                      |
| _DefaultApi_      | [**v1_auth_proxy_post**](docs/DefaultApi.md#v1_auth_proxy_post)                          | **POST** /v1/auth/{proxy+}                       |
| _DefaultApi_      | [**v1_auth_proxy_put**](docs/DefaultApi.md#v1_auth_proxy_put)                            | **PUT** /v1/auth/{proxy+}                        |
| _DefaultApi_      | [**v1_idp_proxy_delete**](docs/DefaultApi.md#v1_idp_proxy_delete)                        | **DELETE** /v1/idp/{proxy+}                      |
| _DefaultApi_      | [**v1_idp_proxy_get**](docs/DefaultApi.md#v1_idp_proxy_get)                              | **GET** /v1/idp/{proxy+}                         |
| _DefaultApi_      | [**v1_idp_proxy_patch**](docs/DefaultApi.md#v1_idp_proxy_patch)                          | **PATCH** /v1/idp/{proxy+}                       |
| _DefaultApi_      | [**v1_idp_proxy_post**](docs/DefaultApi.md#v1_idp_proxy_post)                            | **POST** /v1/idp/{proxy+}                        |
| _DefaultApi_      | [**v1_idp_proxy_put**](docs/DefaultApi.md#v1_idp_proxy_put)                              | **PUT** /v1/idp/{proxy+}                         |
| _PoliciesApi_     | [**get_policies**](docs/PoliciesApi.md#get_policies)                                     | **GET** /v1/policies/principals/{principalId}    |
| _PoliciesApi_     | [**update_policies**](docs/PoliciesApi.md#update_policies)                               | **PUT** /v1/policies/principals/{principalId}    |
| _ProjectsApi_     | [**add_principal_to_project**](docs/ProjectsApi.md#add_principal_to_project)             | **POST** /v1/projects/principals                 |
| _ProjectsApi_     | [**create_project**](docs/ProjectsApi.md#create_project)                                 | **POST** /v1/projects                            |
| _ProjectsApi_     | [**delete_principal_from_project**](docs/ProjectsApi.md#delete_principal_from_project)   | **DELETE** /v1/projects/principals/{principalId} |
| _ProjectsApi_     | [**list_principals_of_project**](docs/ProjectsApi.md#list_principals_of_project)         | **GET** /v1/projects/principals                  |
| _ProjectsApi_     | [**list_project**](docs/ProjectsApi.md#list_project)                                     | **GET** /v1/projects                             |
| _ProjectsApi_     | [**update_project**](docs/ProjectsApi.md#update_project)                                 | **PATCH** /v1/projects/{projectId}               |
| _StsApi_          | [**create_project_scoped_token**](docs/StsApi.md#create_project_scoped_token)            | **POST** /v1/sts/create-project-scoped-token     |
| _StsApi_          | [**whoami**](docs/StsApi.md#whoami)                                                      | **GET** /v1/sts/whoami                           |
| _TokensApi_       | [**create_token**](docs/TokensApi.md#create_token)                                       | **POST** /v1/tokens                              |
| _TokensApi_       | [**delete_token**](docs/TokensApi.md#delete_token)                                       | **DELETE** /v1/tokens/{tokenId}                  |
| _TokensApi_       | [**get_token**](docs/TokensApi.md#get_token)                                             | **GET** /v1/tokens/{tokenId}                     |
| _TokensApi_       | [**list_token**](docs/TokensApi.md#list_token)                                           | **GET** /v1/tokens                               |
| _TokensApi_       | [**update_token**](docs/TokensApi.md#update_token)                                       | **PATCH** /v1/tokens/{tokenId}                   |
| _WellKnownApi_    | [**get_well_known_did**](docs/WellKnownApi.md#get_well_known_did)                        | **GET** /.well-known/did.json                    |
| _WellKnownApi_    | [**get_well_known_jwks**](docs/WellKnownApi.md#get_well_known_jwks)                      | **GET** /.well-known/jwks.json                   |

## Documentation For Models

- [ActionForbiddenError](docs/ActionForbiddenError.md)
- [AddUserToProjectInput](docs/AddUserToProjectInput.md)
- [ConsumerAuthTokenEndpointInput](docs/ConsumerAuthTokenEndpointInput.md)
- [ConsumerAuthTokenEndpointOutput](docs/ConsumerAuthTokenEndpointOutput.md)
- [CorsConsumerAuthTokenEndpointOK](docs/CorsConsumerAuthTokenEndpointOK.md)
- [CreateProjectInput](docs/CreateProjectInput.md)
- [CreateProjectScopedTokenInput](docs/CreateProjectScopedTokenInput.md)
- [CreateProjectScopedTokenOutput](docs/CreateProjectScopedTokenOutput.md)
- [CreateTokenInput](docs/CreateTokenInput.md)
- [GetWellKnownDidOK](docs/GetWellKnownDidOK.md)
- [InvalidJwtTokenError](docs/InvalidJwtTokenError.md)
- [InvalidParameterError](docs/InvalidParameterError.md)
- [JsonWebKeyDto](docs/JsonWebKeyDto.md)
- [JsonWebKeySetDto](docs/JsonWebKeySetDto.md)
- [NotFoundError](docs/NotFoundError.md)
- [PolicyDto](docs/PolicyDto.md)
- [PolicyStatementDto](docs/PolicyStatementDto.md)
- [PrincipalDoesNotBelongToProjectError](docs/PrincipalDoesNotBelongToProjectError.md)
- [ProjectDto](docs/ProjectDto.md)
- [ProjectList](docs/ProjectList.md)
- [ServiceErrorResponse](docs/ServiceErrorResponse.md)
- [ServiceErrorResponseDetailsInner](docs/ServiceErrorResponseDetailsInner.md)
- [TokenAuthenticationMethodDto](docs/TokenAuthenticationMethodDto.md)
- [TokenDto](docs/TokenDto.md)
- [TokenList](docs/TokenList.md)
- [TokenPrivateKeyAuthenticationMethodDto](docs/TokenPrivateKeyAuthenticationMethodDto.md)
- [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo](docs/TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.md)
- [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf](docs/TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.md)
- [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1](docs/TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1.md)
- [TypedPricipalId](docs/TypedPricipalId.md)
- [UnauthorizedError](docs/UnauthorizedError.md)
- [UnexpectedError](docs/UnexpectedError.md)
- [UpdateProjectInput](docs/UpdateProjectInput.md)
- [UpdateTokenInput](docs/UpdateTokenInput.md)
- [UpdateTokenPrivateKeyAuthenticationMethodDto](docs/UpdateTokenPrivateKeyAuthenticationMethodDto.md)
- [UserDto](docs/UserDto.md)
- [UserList](docs/UserList.md)
- [WhoamiDto](docs/WhoamiDto.md)

<a id="documentation-for-authorization"></a>

## Documentation For Authorization

Authentication schemes defined for the API:
<a id="HeritageTokenAuth"></a>

### HeritageTokenAuth

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

<a id="ConsumerTokenAuth"></a>

### ConsumerTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Author

nucleus.team@affinidi.com