# ServiceEndpointInput

Input for adding a service endpoint

## Properties

| Name            | Type                                    | Description                                                      | Notes      |
| --------------- | --------------------------------------- | ---------------------------------------------------------------- | ---------- |
| **name**        | **String**                              | Alphanumeric string with common punctuation (max 100 characters) | [optional] |
| **description** | **String**                              | Alphanumeric string with common punctuation (max 500 characters) | [optional] |
| **url**         | **String**                              | HTTP or HTTPS URL                                                |            |
| **serviceType** | [**ServiceTypeEnum**](#ServiceTypeEnum) | type of service endpoint                                         | [optional] |

## Enum: ServiceTypeEnum

| Name                | Value                          |
| ------------------- | ------------------------------ |
| DID_COMM_MESSAGING  | &quot;DIDCommMessaging&quot;   |
| LINKED_DOMAINS      | &quot;LinkedDomains&quot;      |
| IDENTITY_HUB        | &quot;IdentityHub&quot;        |
| CREDENTIAL_REGISTRY | &quot;CredentialRegistry&quot; |
