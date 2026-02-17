# WalletV2Dto

wallet v2 dto

## Properties

| Name             | Type                                                            | Description                                                 | Notes      |
| ---------------- | --------------------------------------------------------------- | ----------------------------------------------------------- | ---------- |
| **id**           | **String**                                                      | id of the wallet in uuidV4 format                           | [optional] |
| **did**          | **String**                                                      | did of the wallet                                           | [optional] |
| **name**         | **String**                                                      | The name of the wallet                                      | [optional] |
| **description**  | **String**                                                      | The description of the wallet                               | [optional] |
| **didDocument**  | **Object**                                                      | did document of the wallet                                  | [optional] |
| **ari**          | **String**                                                      | ARI of the wallet                                           | [optional] |
| **algorithm**    | **String**                                                      | algorithm used to generate key for the wallet               | [optional] |
| **keys**         | [**List&lt;WalletV2DtoKeysInner&gt;**](WalletV2DtoKeysInner.md) |                                                             | [optional] |
| **defaultKeyId** | **String**                                                      | default key for signing operations when keyId not specified | [optional] |
| **services**     | [**List&lt;ServiceEndpointDto&gt;**](ServiceEndpointDto.md)     | service endpoints in DID document                           | [optional] |
| **createdAt**    | **String**                                                      |                                                             | [optional] |
| **modifiedAt**   | **String**                                                      |                                                             | [optional] |
