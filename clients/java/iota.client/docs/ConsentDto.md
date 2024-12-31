# ConsentDto

## Properties

| Name           | Type                          | Description                                                                                                                           | Notes |
| -------------- | ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **projectId**  | **String**                    | The ID of the project.                                                                                                                |       |
| **id**         | **String**                    | Unique identifier for the record.                                                                                                     |       |
| **userId**     | **String**                    | Unique identifier for the user.                                                                                                       |       |
| **vcType**     | **String**                    | Type of the VC shared by the user. It creates a consent record for each VC type shared except for the base type VerifiableCredential. |       |
| **status**     | [**StatusEnum**](#StatusEnum) | Status of the consent.                                                                                                                |       |
| **modifiedAt** | **String**                    |                                                                                                                                       |       |
| **modifiedBy** | **String**                    |                                                                                                                                       |       |
| **createdAt**  | **String**                    |                                                                                                                                       |       |
| **createdBy**  | **String**                    |                                                                                                                                       |       |

## Enum: StatusEnum

| Name  | Value             |
| ----- | ----------------- |
| GIVEN | &quot;GIVEN&quot; |
