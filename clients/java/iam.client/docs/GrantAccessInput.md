# GrantAccessInput

## Properties

| Name           | Type                                            | Description                             | Notes |
| -------------- | ----------------------------------------------- | --------------------------------------- | ----- |
| **granteeDid** | **String**                                      | DID of the subject being granted access |       |
| **rights**     | [**List&lt;RightsEnum&gt;**](#List<RightsEnum>) | List of rights to grant to the subject  |       |

## Enum: List&lt;RightsEnum&gt;

| Name  | Value                 |
| ----- | --------------------- |
| READ  | &quot;vfs-read&quot;  |
| WRITE | &quot;vfs-write&quot; |
