# CreateAccountInput

## Properties

| Name             | Type           | Description                                           | Notes      |
| ---------------- | -------------- | ----------------------------------------------------- | ---------- |
| **accountIndex** | **BigDecimal** | number that is used for profile DID derivation        |            |
| **accountDid**   | **String**     | DID that is associated with the account number        |            |
| **didProof**     | **String**     | JWT that proves ownership of profile DID by requester |            |
| **alias**        | **String**     | Alias of account                                      | [optional] |
| **metadata**     | **Object**     | Metadata of account                                   | [optional] |
| **description**  | **String**     | Description of account                                | [optional] |
