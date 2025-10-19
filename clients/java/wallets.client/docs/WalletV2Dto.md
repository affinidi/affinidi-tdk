# WalletV2Dto

wallet v2 dto

## Properties

| Name            | Type                                                        | Description                                   | Notes      |
| --------------- | ----------------------------------------------------------- | --------------------------------------------- | ---------- |
| **id**          | **String**                                                  | id of the wallet in uuidV4 format             | [optional] |
| **did**         | **String**                                                  | did of the wallet                             | [optional] |
| **name**        | **String**                                                  | The name of the wallet                        | [optional] |
| **description** | **String**                                                  | The description of the wallet                 | [optional] |
| **didDocument** | **Object**                                                  | did document of the wallet                    | [optional] |
| **ari**         | **String**                                                  | ARI of the wallet                             | [optional] |
| **algorithm**   | **String**                                                  | algorithm used to generate key for the wallet | [optional] |
| **keys**        | [**List&lt;WalletDtoKeysInner&gt;**](WalletDtoKeysInner.md) |                                               | [optional] |
| **createdAt**   | **String**                                                  |                                               | [optional] |
| **modifiedAt**  | **String**                                                  |                                               | [optional] |
