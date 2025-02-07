# CreateProfileInput

## Properties

| Name            | Type                        | Description                                                                                                   | Notes                        |
| --------------- | --------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **name**        | **String**                  | Name of the item                                                                                              | [default to null]            |
| **description** | **String**                  | description of profile                                                                                        | [optional] [default to null] |
| **edekInfo**    | [**EdekInfo**](EdekInfo.md) |                                                                                                               | [default to null]            |
| **dek**         | **String**                  | A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE] | [default to null]            |
| **metadata**    | **String**                  | metadata of the node in stringified json format                                                               | [optional] [default to null] |
| **subjectDid**  | **String**                  | DID to grant access to Profile                                                                                | [optional] [default to null] |
| **rights**      | **List**                    | types of access to grant                                                                                      | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
