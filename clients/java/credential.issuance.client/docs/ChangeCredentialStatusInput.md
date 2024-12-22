# ChangeCredentialStatusInput

## Properties

| Name                 | Type                                      | Description           | Notes      |
| -------------------- | ----------------------------------------- | --------------------- | ---------- |
| **changeReason**     | [**ChangeReasonEnum**](#ChangeReasonEnum) | reason for revocation | [optional] |
| **issuanceRecordId** | **String**                                |                       | [optional] |

## Enum: ChangeReasonEnum

| Name               | Value                          |
| ------------------ | ------------------------------ |
| INVALID_CREDENTIAL | &quot;INVALID_CREDENTIAL&quot; |
| COMPROMISED_ISSUER | &quot;COMPROMISED_ISSUER&quot; |
