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
- [Additional Notes](#additional-notes)
- [Implementation](#implementation)


## Summary

The Verifiable Data Issuance Protocol (VDIP) facilitates the secure and interoperable issuance of verifiable credentials between **Issuers** and **Holders** using the DIDComm v2.1 protocol.

## Motivation

To enable a secure and trusted verifiable credential issuance between Issuers and Holders using DIDComm-compatible mediators.

## Roles

There are two roles in the VDIP flow:

### Issuer

An entity that creates, signs, and issues verifiable credentials. The Issuer validates requests, creates credentials in a supported format, signs them, and delivers them through DIDComm mediator to the Holder.

### Holder

An entity requesting and claiming the verifiable credentials. The holder initiates the issuance flow by sending a request specifying the desired credential format and providing any required metadata.

## States

The protocol follows the request-response pattern of message exchange, where it waits for a response from the Issuer, especially when requesting credential issuance.

## Security

The protocol requires that all message exchanges between the Issuer and the Holder **MUST** be encrypted and verifiable to ensure confidentiality, integrity, and authenticity.

- All messages **MUST** use `authcrypt` encryption envelope (e.g., `authcrypt(signed(plaintext))` or `authcrypt(plaintext)`) to verify the sender and the content remains confidential throughout transmission.

- The Issuer **SHOULD** implement a workflow to verify the request, including the **`credential_meta`** details. 

- If the request includes an [**`assertion`**](#assertion-validation-by-issuer) to issue a credential different from the sender of the `request-issuance` (*requestIssuanceMessage.from*), the Issuer **MUST** cryptographically verify it to prove control of the Holder DID.

## Workflow

When initiating the credential issuance flow, it usually takes the following steps:

```mermaid
sequenceDiagram
    participant HVDIP as Holder's VDIP<br />Agent
    participant DM as DIDComm Mediator
    participant IVDIP as Issuer's VDIP<br />Agent
    
    HVDIP->>DM: [1] Holder forwards the feature query messsage to the mediator for discovery<br />Type `https://didcomm.org/discover-features/2.0/queries`
    DM->>IVDIP: [1.1] Issuer fetches the feature query message
    IVDIP->>DM: [2] Issuer forwards the disclosure to the mediator for the Holder<br />Type: `https://didcomm.org/discover-features/2.0/disclose`
    DM->>HVDIP: [2.1] Holder fetches the disclosure response
    HVDIP->>DM: [3] Holder send a request credential issuance message to the mediator for the Issuer<br />Type: `https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance`
    DM->>IVDIP: [4] Issuer fetches the message containing the issuance request
    IVDIP->>IVDIP: [4.1] Checks the request and verifies the details
    IVDIP->>IVDIP: [5] Generates a VC and signs it
    IVDIP->>DM: [6] Issuer forwards the message containing the signed VC to the mediator for the Holder
    DM->>HVDIP: [7] Holder fetches the message containing the signed VC
    Note over HVDIP: [7.1] Holder stores the VC into their digital wallet

```

1. **Feature Query Initiation**

    The Holder **MAY** send a message to the Issuer requesting information about supported features ([`discover-features/2.0/queries`](#querying-features)).

2. **Feature Disclosure**

    If the Holder sends a features query, the Issuer **MUST** respond with a message listing the supported features ([`discover-features/2.0/disclose`](#feature-disclosures)).

3. **Credential Issuance Request**

    If the desired feature is supported, the Holder **MAY** send a message requesting the issuance of a credential ([`vdip/1.0/request-issuance`](#request-issuance)).

4. **Request Validation**

    The Issuer receives the request from the Holder and **MUST** perform validation, including:

      - Verifying the data provided in the request.
      - Determining whether the request can be fulfilled.
      - Verifying holder-bound assertions, if present.

5. **Credential Creation**

    After successful validation, the Issuer **MUST** create a credential containing verified claims and signs it using the appropriate proof mechanism for the chosen format.

6. **Credential Delivery**

    The Issuer **MUST** send a message to the Holder containing the serialised credential ([`vdip/1.0/issued-credential`](#issued-credential)).

7. **Secure Storage**

    The Holder receives the credential and stores it securely in their digital wallet.

**NOTE:** 

Steps **1 - 4** in this workflow are **optional**. The Issuer **MAY** issue a credential without the Holder initiating feature discovery or an issuance request.

For example, if the Holder is enrolled in a course, the training institution (Issuer) may automatically issue a credential upon completion. In this scenario, the Holder’s DID is already known to the Issuer, enabling credential generation and delivery without prior queries or requests.

## Messages

VDIP implements the following message types.

### request-issuance

Request credential issuance from the Issuer with reference to the Out-of-Band offer, the required format (e.g., W3C/V2 VC Model), and details to include in the Verifiable Credential.

**NOTE:**

The `request-issuance` message is optional. The Issuer **MAY** issue a credential without the Holder initiating a request.

For example, if the Holder is enrolled in a course, the training institution (Issuer) may automatically issue a credential upon completion. In this scenario, the Holder’s DID is already known to the Issuer, enabling credential generation and delivery without prior queries or requests.

**Direction:** Holder → Issuer

**Message Type URI:**

```
https://affinidi.com/didcomm/protocols/vdip/1.0/request-issuance
```

**Message Fields:**

- **`proposal_id` REQUIRED:** References to a unique identifier for the out-of-band offer generated by the Issuer to identify the specific request when initiated by the Holder (e.g., when the Holder clicks on a CTA button requesting to issue an EmailVC).

- **`credential_format` OPTIONAL:** The format of the Verifiable Credential to be issued (e.g., W3C/V2 Data Model). This field is optional, and the Issuer may choose to issue using one of the supported formats from the list disclosed by the discovery features disclosure.

- **`credential_meta` OPTIONAL:** Additional data needed to create the credential for issuance (e.g., email, other relevant attributes).

- **`holder_did` OPTIONAL:** The DID of the Holder who will receive the credential, different from the DID of the message sender. Only **REQUIRED** when issuing a credential to a different DID.

- **`assertion` OPTIONAL:** A signed JWT for proving control of the specified **`holder_did`** in the request. Only **REQUIRED** when issuing a credential to a different DID. 

  The assertion contains the following details:

    - `iss`: Holder DID (issuer of the assertion).
    - `sub`: Holder DID (subject of the assertion).
    - `aud`: Issuer DID (audience).
    - `proposalId`: Links to the credential request.
    - `exp`: Expiration timestamp (prevents replay attacks).
    - `iat`: Issuance timestamp.
    - `challenge`: Optional additional anti-replay binding.

- **`challenge` OPTIONAL:** An optional secret. Allows Issuer to associate Holder with a conventional contact method (e.g., email or phone).

- **`data_integrity_proof_suite` OPTIONAL:** An optional configuration that specifies which data integrity proof suite Holder requires. Applies only for VC types that support it. If not provided, the Issuer can choose to use one of the proof suites it supports.

- **`json_web_signature_algorithm` OPTIONAL:** An optional configuration that specifies which JSON Web Signature algorithm Holder requires. Applies only for VC types that support it. If not provided, the Issuer can choose to use one of the supported JSON Web Signatures from the list disclosed by the discovery features disclosure.

- **`comment` OPTIONAL:** An optional comment about the credential issuance request from the Holder.

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

#### Request Validation by Issuer

The Issuer **MUST** check whether it can fulfil the credential issuance request and validate the provided data before creating and signing the credential. This includes:

- The Issuer **MUST** determine if the requested issuance can be fulfilled based on supported features and workflow policies.

- The Issuer **MUST** verify that all required fields are present and valid, including any holder-bound assertions.

If the Issuer **CANNOT** fulfil the request (e.g., invalid proposal_id, unsupported feature) or if data validation fails, the Issuer **MUST** return a [Problem Report](#error-models) message conforming to the Problem Report 2.0 protocol.

The Problem Report **SHOULD** include an appropriate error code and **MAY** include a comment property to provide human-readable context or troubleshooting hints. The comment property is non-normative.

#### Assertion Validation by Issuer

The Issuer **MUST** validate the Holder-bound assertion by performing the following steps:

1. The Issuer **MUST** resolve the `holder_did` to obtain its DID Document.

2. The Issuer **MUST** verify the JWT signature of the assertion using the public key from the Holder’s DID Document.

3. The Issuer **MUST** ensure that the sub claim in the assertion matches the `holder_did`.

4. The Issuer **MUST** validate that the assertion has not expired and, if a challenge is included, confirm its correctness.

**This process ensures that:**

- The assertion is authentic and valid.
- The Holder has control over the DID to which the credential will be issued.

If the assertion validation fail, the Issuer returns a [Problem Report](#error-models).

### issued-credential

Delivers the signed Verifiable Credential (VC) by the Issuer to the Holder to claim and store in their digital wallet.

**Direction:** Issuer → Holder

**Message Type URI:**

```
https://affinidi.com/didcomm/protocols/vdip/1.0/issued-credential
```

**Message Fields:**

- **`credential` REQUIRED:** Contains the issued credential to the Holder, the value can be JSON or a serialised string, based on credential type.

- **`credential_format` REQUIRED:** The type of the issued credential to the Holder (e.g., w3c/v2 format).

- **`comment` OPTIONAL:** An optional comment about the issued credential from the Issuer.

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

For example, the Issuer, based on its workflow, requests that the Holder provide additional information, beyond the details provided in the Holder's original request, like Identity Verification (IDV) or via a website form.

**Direction:** Issuer → Holder

**Message Type URI:**

```
https://affinidi.com/didcomm/protocols/vdip/1.0/switch-context
```

**Message Fields:**

- **`base_issuer_url` REQUIRED:** A URL to which Issuer request the Holder to switch or navigate to continue the issuance process.

- **`nonce` REQUIRED** a UUID value used only once per switch-context request. The Issuer **MUST** validate the nonce value to prevent reuse of the message.

**Example:**

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

**Notes on Error Models**

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

## Additional Notes

The **Verifiable Data Issuance Protocol (VDIP)** can be combined with the **Verifiable Data Sharing Protocol (VDSP)** to streamline workflows where credential issuance and additional data requests occur simultaneously.

In this combined scenario:

- The Holder **MAY** share additional credentials or data required to complete the issuance process.

- The Issuer **MUST** validate the shared data before proceeding with credential creation.

- The Issuer also acts as the Verifier, ensuring that the Holder’s credentials are authentic and meet the requirements for issuance.

**Example Use Case:**

A training institution (Issuer) issues a course completion credential while requesting additional credentials from the Holder (e.g., identity verification) to finalise the issuance process.

## Implementation

To learn more about the Verifiable Data Issuance Protocol, refer to the [VDIP for Dart](https://github.com/affinidi/affinidi-tdk/tree/main/libs/dart/didcomm/vdip) implementation.
