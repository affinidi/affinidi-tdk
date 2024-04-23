# Documentation for CloudWalletEssentials

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to _http://localhost_

| Class           | Method                                                                               | HTTP request                                            | Description                         |
| --------------- | ------------------------------------------------------------------------------------ | ------------------------------------------------------- | ----------------------------------- |
| _DefaultApi_    | [**deleteWallet**](Apis/DefaultApi.md#deletewallet)                                  | **DELETE** /v1/wallets/{walletId}                       | delete wallet by walletId           |
| _RevocationApi_ | [**getRevocationListCredential**](Apis/RevocationApi.md#getrevocationlistcredential) | **GET** /v1/wallets/{walletId}/revocation-list/{listId} | Return revocation list credential.  |
| _RevocationApi_ | [**revokeCredential**](Apis/RevocationApi.md#revokecredential)                       | **POST** /v1/wallets/{walletId}/revoke                  | Revoke Credential.                  |
| _WalletApi_     | [**createWallet**](Apis/WalletApi.md#createwallet)                                   | **POST** /v1/wallets                                    | creates a wallet                    |
| _WalletApi_     | [**getWallet**](Apis/WalletApi.md#getwallet)                                         | **GET** /v1/wallets/{walletId}                          | get wallet details using wallet Id. |
| _WalletApi_     | [**listWallets**](Apis/WalletApi.md#listwallets)                                     | **GET** /v1/wallets                                     | lists all wallets                   |
| _WalletApi_     | [**signCredential**](Apis/WalletApi.md#signcredential)                               | **POST** /v1/wallets/{walletId}/sign-credential         | signs credential with the wallet    |

<a name="documentation-for-models"></a>

## Documentation for Models

- [CreateWalletInput](./Models/CreateWalletInput.md)
- [CreateWalletResponse](./Models/CreateWalletResponse.md)
- [DidKeyInputParams](./Models/DidKeyInputParams.md)
- [DidWebInputParams](./Models/DidWebInputParams.md)
- [EntityNotFoundError](./Models/EntityNotFoundError.md)
- [GetRevocationListCredentialResultDto](./Models/GetRevocationListCredentialResultDto.md)
- [InvalidDidParameterError](./Models/InvalidDidParameterError.md)
- [InvalidParameterError](./Models/InvalidParameterError.md)
- [KeyNotFoundError](./Models/KeyNotFoundError.md)
- [NotFoundError](./Models/NotFoundError.md)
- [OperationForbiddenError](./Models/OperationForbiddenError.md)
- [RevokeCredentialInput](./Models/RevokeCredentialInput.md)
- [ServiceErrorResponse](./Models/ServiceErrorResponse.md)
- [ServiceErrorResponse_details_inner](./Models/ServiceErrorResponse_details_inner.md)
- [SignCredentialInputDto](./Models/SignCredentialInputDto.md)
- [SignCredentialResultDto](./Models/SignCredentialResultDto.md)
- [WalletDto](./Models/WalletDto.md)
- [WalletDto_keys_inner](./Models/WalletDto_keys_inner.md)
- [WalletsListDto](./Models/WalletsListDto.md)

<a name="documentation-for-authorization"></a>

## Documentation for Authorization

<a name="ProjectTokenAuth"></a>

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header
