# DIDComm VDSP Protocol

## Table of Contents

- [DIDComm VDSP Protocol](#didcomm-vdsp-protocol)
  - [Table of Contents](#table-of-contents)
  - [Query Supported Features](#query-supported-features)
    - [Roles](#roles)
  - [Disclose Supported Features](#disclose-supported-features)
    - [Roles](#roles-1)
  - [Request Verifiable Credentials](#request-verifiable-credentials)
    - [Roles](#roles-2)
  - [Share Verifiable Presentation](#share-verifiable-presentation)
    - [Roles](#roles-3)
  - [Send Processing Result](#send-processing-result)
    - [Roles](#roles-4)
  - [Report Errors or Warnings](#report-errors-or-warnings)
    - [Roles](#roles-5)

## Query Supported Features

Query Supported Features

The [PIURI] for this protocol is:

```
https://discover-features/2.0/queries
```

### Roles

Verifier → Holder

## Disclose Supported Features

Disclose Supported Features

The [PIURI] for this protocol is:

```
https://discover-features/2.0/disclose
```

### Roles

Holder → Verifier

## Request Verifiable Credentials

Request Verifiable Credentials

The [PIURI] for this protocol is:

```
https://vdsp/1.0/query-data
```

### Roles

Verifier → Holder

## Share Verifiable Presentation

The [PIURI] for this protocol is:

```
https://vdsp/1.0/data-response
```

### Roles

Holder → Verifier

## Send Processing Result

The [PIURI] for this protocol is:

```
https://vdsp/1.0/data-processing-result
```

### Roles

Verifier → Holder

## Report Errors or Warnings

The [PIURI] for this protocol is:

```
https://report-problem/2.0/problem-report
```

### Roles

Any → Any

[PIURI]: https://identity.foundation/didcomm-messaging/spec/v2.1/#protocol-identifier-uri
