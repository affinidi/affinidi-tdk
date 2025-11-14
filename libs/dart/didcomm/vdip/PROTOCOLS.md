# Verifiable Data Issuance Protocol

This document describes protocols implemented in the scope of `Verifiable Data Issuance Protocol` workflow.

## Table of Contents

- [Summary](#summary)
- [Motivation](#motivation)
- [Roles](#roles)
  - [Issuer](#issuer)
  - [Holder](#holder)
- [States](#states)
- [Security](#security)
- [Workflow](#workflow)
- [Messages](#messages)
  - [request-issuance](#request-issuance)
  - [issued-credential](#issued-credential)
  - [switch-context](#switch-context)
- [Error Models](#error-models)
- [Other Protocols](#other-protocols)
  - [Discover Features Protocol 2.0](#discover-features-protocol-20)
  - [Problem Report Protocol 2.0](#problem-report-protocol-20)
- [Implementation](#implementation)


## Summary

The Verifiable Data Issuance Protocol (VDIP) facilitates the secure and interoperable issuance of verifiable credentials between **Issuers** and **Holders** using the DIDComm v2.1 protocol.

## Motivation

To enable a more secure and trusted verifiable credential issuance between Issuers and Holders using DIDComm-compatible mediators.

## Roles

There are two roles in the VDIP flow:

### Issuer

An entity that creates, signs, and issues verifiable credentials. The issuer validates requests, constructs credentials in a supported format, signs them, and delivers them to the holder via DIDComm message.

### Holder

An entity requesting and claiming the verifiable credentials. The holder initiates the issuance flow by sending a request specifying the desired credential format and providing any required metadata.

## States

The protocol follows the request-response pattern of message exchange, where it waits for a response from the Issuer, especially when requesting credential issuance.

## Security

The protocol requires message exchanges between the Issuer and the Holder to be encrypted and verifiable. 

The Issuer must implement a workflow to verify the request, including the **`credential_meta`** details. If the request includes an **`assertion`** to issue a credential different from the sender, the implementer must cryptographically verify it to prove control of the Holder DID.

## Workflow

When initiating the credential issuance flow, it usually takes the following steps:

```mermaid
sequenceDiagram
    participant HVDIP as Holder's VDIP<br />Agent
    participant DM as DIDComm Mediator
    participant IVDIP as Issuer's VDIP<br />Agent
    
    HVDIP->>DM: [1] Queries the Issuer Agent for features discovery<br />Type `https://didcomm.org/discover-features/2.0/queries`
    DM->>IVDIP: [1.1] Fetches the message for features discovery
    IVDIP->>DM: [2] Disclosed supported features<br />Type: `https://didcomm.org/discover-features/2.0/disclose`
    DM->>HVDIP: [2.1] Holder Agent fetches the disclosure response
    HVDIP->>DM: [3] Request credential issuance from the Issuer<br />Type: `https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance`
    DM->>IVDIP: [4] Fetches the message containing the request
    IVDIP->>IVDIP: [4.1] Checks the request and verifies the details
    IVDIP->>IVDIP: [5] Generates a VC and signs it
    IVDIP->>DM: [6] Sends the signed VC to the Holder
    DM->>HVDIP: [7] Fetches the message containing the signed VC
    Note over HVDIP: [7.1] Holder stores the VC into their digital wallet

```

1. **Feature Query Initiation**

    The Holder sends a message to the Issuer requesting information about supported features ([`discover-features/2.0/queries`](#querying-features)).

2. **Feature Disclosure**

    The Issuer responds with a message listing the supported features ([`discover-features/2.0/disclose`](#feature-disclosures)).

3. **Credential Issuance Request**

    If the desired feature is supported, the Holder sends a message requesting the issuance of a credential ([`vdip/1.0/request-issuance`](#request-issuance)).

4. **Request Validation**

    The Issuer receives the request and performs validation, including:

      - Verifying the data provided in the request.
      - Determining whether the request can be fulfilled.
      - Verifying holder-bound assertions, if present.

5. **Credential Creation**

    After successful validation, the Issuer creates a credential containing verified claims and signs it using the appropriate proof mechanism for the chosen format.

6. **Credential Delivery**

    The Issuer sends a message to the Holder containing the serialised credential ([`vdip/1.0/issued-credential`](#issued-credential)).

7. **Secure Storage**

    The Holder receives the credential and stores it securely in their digital wallet.


## Messages

VDIP implements the following message types.

### request-issuance

Request credential issuance from the Issuer with reference to the Out-of-Band offer, the required format (e.g., W3C V2 VC Model), and details to include in the Verifiable Credential.

**Direction:** Holder → Issuer

**Message Type URI:** `https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance`

#### Basic Issuance Request

The Holder, who is the sender (`FROM`) of the message requesting the Issuer to validate the details and issue a Verifiable Credential.

```json
{
  "id": "5f5a5680-eab5-4dab-b751-29b4691d0754",
  "type": "https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance",
  "from": "did:key:Vz6MkhA4WiEoTaSXmShG4s2mpYsWku2km2MaLq1m2g3yReZF7",
  "to": [
    "did:webvh:QmQfsx1wNZYpVxjWwMnUj16rDH2dq8UbcsC1igZMR2387h:issuerdomain.com"
  ],
  "body": {
    "proposal_id": "proposal_id_from_oob",
    "credential_format": "w3c/v2",
    "json_web_signature_algorithm": "ES256",
    "credential_meta": {
      "data": {
        "email": "test@test.com"
      }
    }
  }
}
```

In the above example, the Holder sends a message requesting the Issuer to issue a Verifiable Credential for their email address. 

The assumption is that the Issuer checks if it can fulfil the request and verifies the email address to ensure it is a valid one and that the requester has access to it (e.g., sending an OTP to prove ownership) before creating and signing the credential for the Holder.

The request contains the following information:

- **`proposal_id`:** References to a unique identifier for the out-of-band offer generated by the Issuer to identify the specific request when initiated by the Holder (e.g., when the Holder clicks on a CTA button requesting to issue an EmailVC).
- **`credential_format`:** The format of the Verifiable Credential to be issued (e.g., W3C V2 Data Model). This field is optional, and the Issuer may choose to issue using their own supported format.
- **`credential_meta`:** Additional data required to create the credential for issuance (e.g., email, other relevant attributes).

#### Issuance Request with Holder-bound Assertion

The sender of the message requesting the Issuer to issue a Verifiable Credential to the specified Holder DID in the request. 

The sender of this message could be the same person, using a different DID for communication and claiming credentials for additional privacy.

```json
{
  "id": "208ffdba-0148-494b-8df3-4d15a76e7e65",
  "type": "https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance",
  "from": "did:key:zDnaemRDgqcUvFUMvvg5WPutdHYWdRGJBCCxMk3W3fcKeHng6",
  "to": [
    "did:webvh:QmQfsx1wNZYpVxjWwMnUj16rDH2dq8UbcsC1igZMR2387h:issuerdomain.com"
  ],
  "body": {
    "proposal_id": "proposal_id_from_oob",
    "holder_did": "did:key:zDnaecKh2xM7PMuFQgRcn15neeCpT4yyHqL6aiy4jj4GHDBh4",
    "assertion": "eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJwcm9wb3NhbElkIjoicHJvcG9zYWxfaWRfZnJvbV9vb2IiLCJpc3MiOiJkaWQ6a2V5OlZ6Nk1raEE0V2lFb1RhU1htU2hHNHMybXBZc1drdTJrbTJNYUxxMW0yZzN5UmVaRjciLCJzdWIiOiJkaWQ6a2V5OlZ6Nk1raEE0V2lFb1RhU1htU2hHNHMybXBZc1drdTJrbTJNYUxxMW0yZzN5UmVaRjciLCJhdWQiOiJkaWQ6d2Vidmg6UW1RZnN4MXdOWllwVnhqV3dNblVqMTZyREgyZHE4VWJjc0MxaWdaTVIyMzg3aDppc3N1ZXJkb21haW4uY29tIiwianRpIjoiNzViYjQ5NzktMTFkOC00YWMyLWIzMjAtMTRmYjExOWIxYzZhIiwiZXhwIjoxNzYyOTQwMjE4LCJpYXQiOjE3NjI5Mzk5MTgsIl9zZF9hbGciOiJzaGEtMjU2In0.p-d2j0o-6faD5Zzpou0CtbNnt8R1ev8Qn3LchUG3lhWJYWA_GoumqFWRAPW_-OQHk9GY3dg6lTRq_nBZqyjFAA",
    "credential_format": "w3c/v2",
    "json_web_signature_algorithm": "ES256",
    "credential_meta": {
      "data": {
        "email": "test@test.com"
      }
    }
  }
}
```

In the above example, the Holder is specified in the request using the **`holder_did`** property, including the **`assertion`** for proving control of the Holder DID, which requests the Issuer to issue a Verifiable Credential for their email address.

The assumption is that the Issuer checks if it can fulfil the request and verifies the email address to ensure it is a valid one and that the Holder specified in the request has access to it (e.g., sending an OTP to prove ownership) before creating and signing the credential.

The request contains the following information:

- **`holder_did`:** The DID of the Holder who will receive the credential, different from the DID of the message sender.
- **`assertion`:** A signed JWT for proving control of the specified **`holder_did`** in the request. The assertion contains the following details:
    - `iss`: Holder DID (issuer of the assertion).
    - `sub`: Holder DID (subject of the assertion).
    - `aud`: Issuer DID (audience).
    - `proposalId`: Links to the credential request.
    - `exp`: Expiration timestamp (prevents replay attacks).
    - `iat`: Issuance timestamp.
    - `challenge`: Optional additional anti-replay binding.

- **`proposal_id`:** References to a unique identifier for the out-of-band offer generated by the Issuer to identify the specific request when initiated by the Holder (e.g., when the Holder clicks on a CTA button requesting to issue an EmailVC).
- **`credential_format`:** The format of the Verifiable Credential to be issued (e.g., W3C V2 Data Model). This field is optional, and the Issuer may choose to issue using their own supported format.
- **`credential_meta`:** Additional data required to create the credential for issuance (e.g., email, other relevant attributes).

The Issuer must validate the assertion by taking the following steps:

1. Resolves the `holder_did` to get its DID Document.
2. Verifies the assertion JWT signature.
3. Validates that `sub` matches `holder_did`.
4. Checks expiration and challenge (if used).
5. Issues the credential to the verified `holder_did`.

It ensures that the assertion is valid and that the Holder has control over the DID.

### issued-credential

Delivers the signed Verifiable Credential (VC) by the Issuer to the Holder to claim and store in their digital wallet.

**Direction:** Issuer → Holder

**Message Type URI:** `https://affinidi.com/didcomm/protocols/vdip/1.0/issued-credential`

**Example:**

```json
{
  "id": "3defa415-70c7-4901-ab6b-10c19d1bfa34",
  "type": "https://affinidi.com/didcomm/protocols/vdip/1.0/issued-credential",
  "from": "did:webvh:QmQfsx1wNZYpVxjWwMnUj16rDH2dq8UbcsC1igZMR2387h:issuerdomain.com",
  "to": [
    "did:key:Vz6MkhA4WiEoTaSXmShG4s2mpYsWku2km2MaLq1m2g3yReZF7"
  ],
  "body": {
    "credential": "{\"@context\":[\"https://www.w3.org/2018/credentials/v2\",\"https://schema.affinidi.com/EmalVC.jsonld\"],\"issuer\":{\"id\":\"did:webvh:QmQfsx1wNZYpVxjWwMnUj16rDH2dq8UbcsC1igZMR2387h:issuerdomain.com\"},\"type\":[\"VerifiableCredential\",\"EmailVC\"],\"id\":\"026558d6-8cac-4898-b1dc-660750a6b43f\",\"credentialSchema\":{\"id\":\"https://schema.affinidi.com/EmalVC.json\",\"type\":\"JsonSchemaValidator2018\"},\"issuanceDate\":\"2025-11-12T09:31:59.088589Z\",\"credentialSubject\":{\"id\":\"did:key:Vz6MkhA4WiEoTaSXmShG4s2mpYsWku2km2MaLq1m2g3yReZF7\",\"email\":\"test@test.com\",\"subscriptionType\":\"basic\"},\"proof\":{\"type\":\"DataIntegrityProof\",\"created\":\"2025-11-12T10:31:59.091444\",\"verificationMethod\":\"did:webvh:QmQfsx1wNZYpVxjWwMnUj16rDH2dq8UbcsC1igZMR2387h:issuerdomain.com#key-1\",\"proofPurpose\":\"assertionMethod\",\"cryptosuite\":\"ecdsa-jcs-2019\",\"proofValue\":\"z3qMm168CFgV8EjCLXxFfECFtTATDDn21hueLiL1XukKdyWJtiiNJHoCkzkDCvVcNVUnoLtA6UoBDb12Tqi1dZCqA\",\"@context\":[\"https://www.w3.org/2018/credentials/v2\",\"https://schema.affinidi.com/EmalVC.jsonld\"]}}",
    "credential_format": "w3c/v2"
  }
}
```

In the above example, the Issuer sends the signed credential to the requester, providing the **credential** property that contains the Verifiable Credential in a JSON-formatted string and the format used to generate the credential.

The Holder parses this data and stores the credential securely in their digital wallet.

### switch-context

Requests that the Holder navigate to the Issuer's URL provided in the message to complete the Issuer's workflow before issuing a credential.

For example, the Issuer, based on its workflow, requests that the Holder provide additional information, beyond the details provided in the Holder's original request, via a website form.

**Direction:** Issuer → Holder

**Message Type URI:** `https://affinidi.com/didcomm/protocols/vdip/1.0/switch-context"`

**Examples:**

```json
{
    "id": "3defa415-70c7-4901-ab6b-10c19d1bfa34",
    "type": "https://affinidi.com/didcomm/protocols/vdip/1.0/switch-context",
    "to": ["did:key:Vz6MkhA4WiEoTaSXmShG4s2mpYsWku2km2MaLq1m2g3yReZF7"],
    "from": "did:webvh:QmQfsx1wNZYpVxjWwMnUj16rDH2dq8UbcsC1igZMR2387h:issuerdomain.com",
    "body":{
        "base_issuer_url": "https://issuer.website.com/identity-verification",
        "nonce": "uuid-used-only-once"
    }
}

```

In the example above, the Issuer sends a message to the Holder requesting that they access the Issuer's website to perform identity verification before issuing the credential.

## Error Models

Error reporting in this protocol **MUST** use the standard [Problem Report 2.0](#problem-report-protocol) protocol and the associated [problem codes](https://identity.foundation/didcomm-messaging/spec/v2.1/#problem-codes). These codes provide a structured way to communicate issues during protocol execution.

| Error Code | Description |
|------------|-------------|
| e.p.proposal-not-valid | The out-of-band offer for issuance has expired, or the proposal ID provided is invalid. |
| e.p.feature-not-supported | The requested feature is not supported by the agent. |
| w.m.credential-rejected | The issued credential was rejected by the Holder. The Issuer **MAY** choose to ignore or act on this based on its workflow. |
| w.m.bad-credential-subject | The issued credential contains an incorrect credential subject. The Issuer **MAY** choose to ignore or act on this based on its workflow. |

**Notes on Error Codes**

- This list is not exhaustive. Other errors **MAY** occur during workflow execution.
- Implementers **MAY** define additional error codes, provided they conform to the Problem Report 2.0 protocol.
- Non-protocol errors (e.g., internal system failures) **SHOULD** be mapped to appropriate problem codes where possible.
- The `comment` property is **MAY** be included in a Problem Report message to provide human-readable context or troubleshooting hints. This property is informative only.

## Other Protocols

The VDIP utilises existing protocols to implement the data-sharing flow from initiating the request to sharing the presentation and the results.

### Discover Features Protocol 2.0

VDIP uses the Discovery Features protocol to query the features supported by the Holder's agent. Depending on the supported features, the data sharing flow may continue or not.

The [PIURI](https://identity.foundation/didcomm-messaging/spec/v2.1/#protocol-identifier-uri) for this protocol is `https://didcomm.org/discover-features/2.0`.

#### Querying Features

```json
{
  "id": "c053ec35-cf80-4ac4-8fc4-ac63e031932a",
  "type": "https://didcomm.org/discover-features/2.0/queries",
  "from": "did:key:Vz6MkhA4WiEoTaSXmShG4s2mpYsWku2km2MaLq1m2g3yReZF7",
  "to": [
    "did:webvh:QmQfsx1wNZYpVxjWwMnUj16rDH2dq8UbcsC1igZMR23k9z:issuerdomain.com"
  ],
  "body": {
    "queries": [
      // Reduced query for brevity
      {
        "feature-type": "protocol",
        "match": "https://affinidi.com/didcomm/protocols/vdip/1.0"
      },
      {
        "feature-type": "data_query_lang",
        "match": "DCQL"
      },
      {
        "feature-type": "credential_format",
        "match": "sd_jwt_vc"
      },
      {
        "feature-type": "credential_format",
        "match": "w3c/v2"
      },
      {
        "feature-type": "data_integrity_proof_suite",
        "match": "ecdsa-rdfc-2019"
      },
      {
        "feature-type": "data_integrity_proof_suite",
        "match": "eddsa-rdfc-2022"
      },
      {
        "feature-type": "json_web_signature_algorithm",
        "match": "ES256"
      },
      {
        "feature-type": "json_web_signature_algorithm",
        "match": "EdDSA"
      },
      {
        "feature-type": "operation",
        "match": "registerAgent"
      }
    ]
  }
}
```

#### Feature Disclosures

```json
{
  "id": "5135700e-583a-4539-9f45-f644ddbe9707",
  "type": "https://didcomm.org/discover-features/2.0/disclose",
  "from": "did:webvh:QmQfsx1wNZYpVxjWwMnUj16rDH2dq8UbcsC1igZMR23k9z:issuerdomain.com",
  "to": [
    "did:key:Vz6MkhA4WiEoTaSXmShG4s2mpYsWku2km2MaLq1m2g3yReZF7"
  ],
  "thid": "c053ec35-cf80-4ac4-8fc4-ac63e031932a",
  "body": {
    "disclosures": [
      // Reduced disclosures for brevity
      {
        "feature-type": "protocol",
        "id": "https://affinidi.com/didcomm/protocols/vdip/1.0",
        "roles": [
          "holder"
        ]
      },
      {
        "feature-type": "data_query_lang",
        "id": "DCQL"
      },
      {
        "feature-type": "credential_format",
        "id": "sd_jwt_vc"
      },
      {
        "feature-type": "credential_format",
        "id": "w3c/v2"
      },
      {
        "feature-type": "data_integrity_proof_suite",
        "id": "ecdsa-rdfc-2019"
      },
      {
        "feature-type": "json_web_signature_algorithm",
        "id": "ES256"
      },
      {
        "feature-type": "json_web_signature_algorithm",
        "id": "EdDSA"
      },
      {
        "feature-type": "operation",
        "id": "registerAgent"
      }
    ]
  }
}
```

For more information, visit the [Discover Features Protocol 2.0](https://didcomm.org/discover-features/2.0/) documentation.

### Problem Report Protocol 2.0

The existing Problem Reports defined within the DIDComm v2.1 protocol specification for standard reporting of any issues encountered during the data sharing flow.

The [PIURI](https://identity.foundation/didcomm-messaging/spec/v2.1/#protocol-identifier-uri) for this protocol is `https://didcomm.org/report-problem/2.0`.

```json
{
  "type": "https://didcomm.org/report-problem/2.0/problem-report",
  "id": "345e6789-e89b-12d3-a456-426614174222",
  "pthid": "123e4567-e89b-12d3-a456-426614174000",
  "body": {
    "code": "e.p.vdip.invalid-request",
    "comment": "<DETAILS_OF_THE_PROBLEM>",
    "args": ["<FIELDS>"]
  }
}
```

For more information, visit the [Problem Reports](https://identity.foundation/didcomm-messaging/spec/v2.1/#problem-reports) section.

## Implementation

To learn more about the Verifiable Data Issuance Protocol, refer to the [VDIP for Dart](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/didcomm/vdip) implementation.
