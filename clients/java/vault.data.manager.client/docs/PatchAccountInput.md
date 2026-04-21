# PatchAccountInput

## Properties

| Name                | Type       | Description                                                                                                   | Notes |
| ------------------- | ---------- | ------------------------------------------------------------------------------------------------------------- | ----- |
| **didProof**        | **String** | JWT that proves ownership of profile DID by requester                                                         |       |
| **encryptedDekek**  | **String** | A base64 encoded data encryption key, encrypted using VFS public key, required for PATCH operation on account |       |
| **ownerProfileId**  | **String** | A unique identifier of profile, required for PATCH operation on account                                       |       |
| **ownerProfileDid** | **String** | DID that is associated with the profile, required for PATCH operation on account                              |       |
