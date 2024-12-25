# SubmissionRequirement

## Properties

| Name           | Type                                                              | Description | Notes      |
| -------------- | ----------------------------------------------------------------- | ----------- | ---------- |
| **name**       | **String**                                                        |             | [optional] |
| **purpose**    | **String**                                                        |             | [optional] |
| **rule**       | [**RuleEnum**](#RuleEnum)                                         |             |            |
| **count**      | **Integer**                                                       |             | [optional] |
| **min**        | **Integer**                                                       |             | [optional] |
| **max**        | **Integer**                                                       |             | [optional] |
| **from**       | **String**                                                        |             | [optional] |
| **fromNested** | [**List&lt;SubmissionRequirement&gt;**](SubmissionRequirement.md) |             | [optional] |

## Enum: RuleEnum

| Name | Value            |
| ---- | ---------------- |
| ALL  | &quot;all&quot;  |
| PICK | &quot;pick&quot; |
