# CreateProfileInput

## Properties

| Name            | Type                                            | Description                                                                                                   | Notes      |
| --------------- | ----------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**        | **String**                                      | Name of the item                                                                                              |            |
| **description** | **String**                                      | description of profile                                                                                        | [optional] |
| **edekInfo**    | [**EdekInfo**](EdekInfo.md)                     |                                                                                                               |            |
| **dek**         | **String**                                      | A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE] |            |
| **metadata**    | **String**                                      | metadata of the node in stringified json format                                                               | [optional] |
| **subjectDid**  | **String**                                      | DID to grant access to Profile                                                                                | [optional] |
| **rights**      | [**List&lt;RightsEnum&gt;**](#List<RightsEnum>) | types of access to grant                                                                                      | [optional] |

## Enum: List&lt;RightsEnum&gt;

| Name  | Value             |
| ----- | ----------------- |
| READ  | &quot;READ&quot;  |
| WRITE | &quot;WRITE&quot; |
