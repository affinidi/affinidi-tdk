# Constraints

## Properties

| Name                | Type                                              | Description | Notes      |
| ------------------- | ------------------------------------------------- | ----------- | ---------- |
| **limitDisclosure** | [**LimitDisclosureEnum**](#LimitDisclosureEnum)   |             | [optional] |
| **statuses**        | [**ConstraintsStatuses**](ConstraintsStatuses.md) |             | [optional] |
| **fields**          | [**List&lt;Field&gt;**](Field.md)                 |             | [optional] |
| **subjectIsIssuer** | [**SubjectIsIssuerEnum**](#SubjectIsIssuerEnum)   |             | [optional] |
| **isHolder**        | [**List&lt;HolderSubject&gt;**](HolderSubject.md) |             | [optional] |
| **sameSubject**     | [**List&lt;HolderSubject&gt;**](HolderSubject.md) |             | [optional] |

## Enum: LimitDisclosureEnum

| Name      | Value                 |
| --------- | --------------------- |
| REQUIRED  | &quot;required&quot;  |
| PREFERRED | &quot;preferred&quot; |

## Enum: SubjectIsIssuerEnum

| Name      | Value                 |
| --------- | --------------------- |
| REQUIRED  | &quot;required&quot;  |
| PREFERRED | &quot;preferred&quot; |
