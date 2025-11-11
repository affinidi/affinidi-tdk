# Protocols

## Table of Contents

- [Protocols](#protocols)
  - [Table of Contents](#table-of-contents)
  - [Discover Features Protocol 2.0](#discover-features-protocol-20)
    - [Motivation](#motivation)
    - [Roles](#roles)
      - [Verifier](#verifier)
      - [Holder](#holder)
    - [States](#states)
    - [Messages](#messages)
      - [queries](#queries)
      - [disclose](#disclose)
  - [Verifiable Data Sharing (VDSP) Protocol](#verifiable-data-sharing-vdsp-protocol)
    - [Motivation](#motivation-1)
    - [Roles](#roles-1)
      - [Verifier](#verifier-1)
      - [Holder](#holder-1)
    - [States](#states-1)
    - [Messages](#messages-1)
      - [query-data](#query-data)
      - [data-response](#data-response)
      - [data-processing-result](#data-processing-result)
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
 - Verifier sends a `queries` message to discover what the holder supports.
 - Holder responds with a `disclose` message listing supported functionalities.

### Messages

TBD

#### queries

Query Supported Features
Verifier → Holder

`discover-features/2.0/queries`

#### disclose

Disclose Supported Features
Holder → Verifier

`discover-features/2.0/disclose`

## Verifiable Data Sharing (VDSP) Protocol

The [PIURI] for this protocol is:

```
https://didcomm.org/vdsp/1.0
```

### Motivation

TBD

### Roles

#### Verifier

An entity that requests verifiable credentials from holders. The verifier can query holders for specific data using credential query language and verify the authenticity of the shared credentials.

#### Holder

An entity that stores and controls verifiable credentials. The holder can receive data requests, filter their credentials, and share selected credentials with verifiers through a verifiable presentation format.

### States

TBD

### Messages

TBD

#### query-data

Request Verifiable Credentials
Verifier → Holder

`vdsp/1.0/query-data`

#### data-response

Share Verifiable Presentation
Holder → Verifier

`vdsp/1.0/data-response`

#### data-processing-result

Send Processing Result
Verifier → Holder

`vdsp/1.0/data-processing-result`


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
