# CreateAccountWithProfileInput

## Properties

| Name                   | Type                        | Description                                                          | Notes      |
| ---------------------- | --------------------------- | -------------------------------------------------------------------- | ---------- |
| **accountIndex**       | **BigDecimal**              | number that is used for profile DID derivation                       |            |
| **accountDid**         | **String**                  | DID that is associated with the account number                       |            |
| **didProof**           | **String**                  | JWT that proves ownership of profile DID by requester                |            |
| **alias**              | **String**                  | Alias of account                                                     | [optional] |
| **accountMetadata**    | **Object**                  | Metadata of account                                                  | [optional] |
| **accountDescription** | **String**                  | Description of account                                               | [optional] |
| **profileName**        | **String**                  | Name of the profile node                                             |            |
| **profileDescription** | **String**                  | Description of the profile node                                      | [optional] |
| **profileMetadata**    | **Object**                  | Metadata of the profile                                              | [optional] |
| **edekInfo**           | [**EdekInfo**](EdekInfo.md) |                                                                      |            |
| **dek**                | **String**                  | A base64 encoded data encryption key, encrypted using VFS public key |            |
