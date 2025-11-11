# DIDComm VDIP Protocol

## Table of Contents

- [DIDComm VDIP Protocol](#didcomm-vdip-protocol)
  - [Table of Contents](#table-of-contents)
  - [Query Supported Features](#query-supported-features)
    - [Roles](#roles)
  - [Disclose Supported Features](#disclose-supported-features)
    - [Roles](#roles-1)
  - [Request Credential Issuance](#request-credential-issuance)
    - [Roles](#roles-2)
  - [Deliver Issued Credential](#deliver-issued-credential)
    - [Roles](#roles-3)
  - [Report Errors or Warnings](#report-errors-or-warnings)
    - [Roles](#roles-4)

## Query Supported Features

Query Supported Features

The [PIURI] for this protocol is:

```
https://discover-features/2.0/queries
```

### Roles

Holder → Issuer

## Disclose Supported Features

Disclose Supported Features

The [PIURI] for this protocol is:

```
https://discover-features/2.0/disclose
```

### Roles

Issuer → Holder

## Request Credential Issuance

Request Credential Issuance

The [PIURI] for this protocol is:

```
https://vdip/1.0/request-issuance
```

### Roles

Holder → Issuer

## Deliver Issued Credential

The [PIURI] for this protocol is:

```
https://vdip/1.0/issued-credential
```

### Roles

Issuer → Holder

## Report Errors or Warnings

The [PIURI] for this protocol is:

```
https://report-problem/2.0/problem-report
```

### Roles

Any → Any

[PIURI]: https://identity.foundation/didcomm-messaging/spec/v2.1/#protocol-identifier-uri
