# Protocols

This document describes protocols implemented in the scope of `Verifiable Data Issuance Protocol` library.

## Table of Contents

- [Discover Features Protocol 2.0](#discover-features-protocol-20)
  - [Motivation](#motivation)
  - [Roles](#roles)
    - [Verifier](#verifier)
    - [Holder](#holder)
  - [States](#states)
  - [Messages](#messages)
    - [queries](#queries)
    - [disclose](#disclose)
- [Verifiable Data Issuance Protocol (VDIP)](#verifiable-data-issuance-protocol-vdip)
  - [Motivation](#motivation-1)
  - [Roles](#roles-1)
    - [Verifier](#verifier-1)
    - [Holder](#holder-1)
  - [States](#states-1)
  - [Messages](#messages-1)
    - [request-issuance](#request-issuance)
    - [issued-credential](#issued-credential)
- [Report Errors or Warnings Protocol](#report-errors-or-warnings-protocol)
  - [Motivation](#motivation-2)
  - [Roles](#roles-2)
    - [Any](#any)
  - [States](#states-2)
  - [Messages](#messages-2)
    - [problem-report](#problem-report)

## Discover Features Protocol 2.0

The [PIURI] for this protocol is:

```
https://didcomm.org/discover-features/2.0
```

### Motivation

TBD

### Roles

#### Verifier

An entity that requests verifiable credentials from holders. The verifier can query holders for specific data using credential query language and verify the authenticity of the shared credentials.

#### Holder

An entity that stores and controls verifiable credentials. The holder can receive data requests, filter their credentials, and share selected credentials with verifiers through a verifiable presentation format.

### States

**Feature Discovery**: 
 - Holder sends a `queries` message to discover what credential formats and features the issuer supports.
 - Issuer responds with a `disclose` message listing supported formats (e.g., W3C v1, JWT VC, SD-JWT VC).

### Messages

TBD

#### queries

Query Supported Features
Holder → Issuer

`discover-features/2.0/queries`

#### disclose


Disclose Supported Features
Issuer → Holder

`discover-features/2.0/disclose`

# Verifiable Data Issuance Protocol (VDIP)

The [PIURI] for this protocol is:

```
https://didcomm.org/vdip/1.0
```

### Motivation

TBD

### Roles

#### Verifier

An entity that requests verifiable credentials from holders. The verifier can query holders for specific data using credential query language and verify the authenticity of the shared credentials.

#### Holder

An entity that stores and controls verifiable credentials. The holder can receive data requests, filter their credentials, and share selected credentials with verifiers through a verifiable presentation format.

### States

1. **Request Issuance**:
   - Holder sends a `request-issuance` message specifying:
     - `proposal_id`: References an external proposal or out-of-band offer.
     - `credential_format`: Desired format (optional, Issuer may choose).
     - `credential_meta`: Additional data needed to construct the credential (e.g., email, attributes).  
2. **Validation**:
   - Issuer validates the request.
   - Issuer verifies holder-bound assertions if present.
   - Issuer determines if it can fulfil the request.
3. **Credential Construction**:
   - Issuer constructs the credential with verified claims.
   - Issuer signs the credential using the appropriate proof mechanism for the format.
4. **Credential Delivery**:
   - Issuer sends an `issued-credential` message containing the serialised credential.  
5. **Claim Credential**:
   - Holder receives and processes the credential.
   - Holder stores it locally and presents it to verifiers.

### Messages

TBD

#### request-issuance

Request Credential Issuance
Holder → Issuer

`vdip/1.0/request-issuance`

#### issued-credential

Deliver Issued Credential
Issuer → Holder

`vdip/1.0/issued-credential`

## Report Errors or Warnings Protocol

The [PIURI] for this protocol is:

```
https://didcomm.org/report-problem/2.0
```

### Motivation

TBD

### Roles

#### Any

TBD 

### States

TBD

### Messages

TBD

#### problem-report

Report Errors or Warnings
Any → Any

`report-problem/2.0/problem-report`
