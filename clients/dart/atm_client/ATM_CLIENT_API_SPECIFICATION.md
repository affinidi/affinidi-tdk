# ATM Client Public API Specification

*Aligned with ADR 0075 and verified against affinidi-messaging-bridge implementation*

## Context

This specification defines the public API for the **Dart ATM Client** package, which provides communication with Affinidi services via the **DIDComm Gateway**. The API design follows **ADR 0075** and maintains 1:1 mapping with the Rust **affinidi-messaging-bridge** implementation.

**Dart ATM Client** – A Dart package that contains clients for communication with the **DIDComm Gateway** and DIDComm message types.

**DIDComm Gateway** – Allows users to connect to Affinidi's services (such as CIS, Atlas, CWE, IAM, DVS, ACA) via DIDComm protocols.

**affinidi-messaging-bridge** – The Rust reference implementation that defines the operations and message formats for ATM communication.

## Code Conventions

- Client naming: `Atm<ServiceName>Client` (per ADR 0075)
  - Drop unnecessary `Affinidi` prefix and `Service` suffixes
  - Examples: `AtmMessagingAtlasClient`, `AtmCisClient`, `AtmCweClient`
- Method naming: Using `operationId` from `openapi.yaml`
- Message types: Follow pattern `affinidi.io/operations/{service}/{operation}`

## Client Classes

### 1. AtmMessagingAtlasClient

Manages Atlas mediator instances through the DIDComm Gateway.

```dart
class AtmMessagingAtlasClient {
  final MediatorClient mediatorClient;
  final DidManager didManager;
  final DidDocument atlasDidDocument;
  final DidSigner signer;
  final KeyPair keyPair;
  final String didKeyId;

  // Atlas operations (8 total)
  Future<PlainTextMessage> getMediatorInstancesList({
    required String accessToken,
    int? limit,
    String? exclusiveStartKey,
  });
  
  Future<PlainTextMessage> deployMediatorInstance({
    required String accessToken,
    Map<String, dynamic> deploymentData,
  });
  
  Future<PlainTextMessage> getMediatorInstanceMetadata({
    required String accessToken,
    required String mediatorId,
  });
  
  Future<PlainTextMessage> destroyMediatorInstance({
    required String accessToken,
    required String mediatorId,
  });
  
  Future<PlainTextMessage> updateMediatorInstanceDeployment({
    required String accessToken,
    required String mediatorId,
    Map<String, dynamic> deploymentData,
  });
  
  Future<PlainTextMessage> updateMediatorInstanceConfiguration({
    required String accessToken,
    required String mediatorId,
    Map<String, dynamic> configurationData,
  });
  
  Future<PlainTextMessage> getMediatorsRequests({
    required String accessToken,
    String? mediatorId,
    int? limit,
    String? exclusiveStartKey,
  });
  
  Future<PlainTextMessage> getMediatorCloudwatchMetricData({
    required String accessToken,
    required String mediatorId,
    required String metricId,
    String? startDate,
    String? endDate,
    int? period,
  });
}
```

### 2. AtmCisClient

Handles credential issuance operations through the DIDComm Gateway.

```dart
class AtmCisClient {
  // CIS operations (2 total)
  Future<PlainTextMessage> initIssuance({
    required String accessToken,
    required Map<String, dynamic> credentialData,
    required String holderDid,
  });
  
  Future<PlainTextMessage> listIssuanceConfiguration({
    required String accessToken,
  });
}
```

### 3. AtmCweClient

Manages cloud wallet operations through the DIDComm Gateway.

```dart
class AtmCweClient {
  // CWE operations (10 total)
  Future<PlainTextMessage> createWallet({
    required String accessToken,
    Map<String, dynamic> walletData,
  });
  
  Future<PlainTextMessage> listWallets({
    required String accessToken,
    String? didType,
  });
  
  Future<PlainTextMessage> getWallet({
    required String accessToken,
    required String walletId,
  });
  
  Future<PlainTextMessage> updateWallet({
    required String accessToken,
    required String walletId,
    Map<String, dynamic> walletData,
  });
  
  Future<PlainTextMessage> deleteWallet({
    required String accessToken,
    required String walletId,
  });
  
  Future<PlainTextMessage> signCredential({
    required String accessToken,
    required String walletId,
    Map<String, dynamic> credentialData,
  });
  
  Future<PlainTextMessage> signJwtToken({
    required String accessToken,
    required String walletId,
    Map<String, dynamic> tokenData,
  });
  
  Future<PlainTextMessage> revokeCredential({
    required String accessToken,
    required String walletId,
    required String credentialId,
  });
  
  Future<PlainTextMessage> getRevocationListCredential({
    required String accessToken,
    required String walletId,
    required String listId,
  });
  
  Future<PlainTextMessage> getRevocationCredentialStatus({
    required String accessToken,
    required String projectId,
    required String walletId,
    required String statusId,
  });
}
```

### 4. AtmIamClient

Manages identity and access management operations through the DIDComm Gateway.

```dart
class AtmIamClient {
  // IAM operations (2 total)
  Future<PlainTextMessage> listProjects({
    required String accessToken,
  });
  
  Future<PlainTextMessage> createProject({
    required String accessToken,
    Map<String, dynamic> projectData,
  });
}
```

### 5. AtmDvsClient

Handles domain verification operations through the DIDComm Gateway.

```dart
class AtmDvsClient {
  // DVS operations (1 total)
  Future<PlainTextMessage> listDomains({
    required String accessToken,
  });
}
```

### 6. AtmAcaClient

Provides secure messaging operations through the DIDComm Gateway.

```dart
class AtmAcaClient {
  // ACA operations (1 total)
  Future<PlainTextMessage> sendMessage({
    required String accessToken,
    required String senderDid,
    required Map<String, dynamic> payload,
  });
}
```

## Message Type URIs

All message types follow the pattern `affinidi.io/operations/{service}/{operation}`:

```dart
// Atlas (AMA) - 8 operations
'affinidi.io/operations/ama/getMediatorInstancesList'
'affinidi.io/operations/ama/deployMediatorInstance'
'affinidi.io/operations/ama/getMediatorInstanceMetadata'
'affinidi.io/operations/ama/destroyMediatorInstance'
'affinidi.io/operations/ama/updateMediatorInstanceDeployment'
'affinidi.io/operations/ama/updateMediatorInstanceConfiguration'
'affinidi.io/operations/ama/getMediatorsRequests'
'affinidi.io/operations/ama/getMediatorCloudwatchMetricData'

// CIS - 2 operations
'affinidi.io/operations/cis/init-issuance'
'affinidi.io/operations/cis/list-issuance-configuration'

// CWE - 10 operations
'affinidi.io/operations/cwe/createWallet'
'affinidi.io/operations/cwe/listWallets'
'affinidi.io/operations/cwe/getWallet'
'affinidi.io/operations/cwe/updateWallet'
'affinidi.io/operations/cwe/deleteWallet'
'affinidi.io/operations/cwe/signCredential'
'affinidi.io/operations/cwe/signJwtToken'
'affinidi.io/operations/cwe/revokeCredential'
'affinidi.io/operations/cwe/getRevocationListCredential'
'affinidi.io/operations/cwe/getRevocationCredentialStatus'

// IAM - 2 operations
'affinidi.io/operations/iam/listProjects'
'affinidi.io/operations/iam/createProject'

// DVS - 1 operation
'affinidi.io/operations/dvs/listDomains'

// ACA - 1 operation
'affinidi.io/operations/aca/messaging'
```

## Open for Discussion

The following Atlas operations (shown in AtmMessagingAtlasClient above) are implemented in the Rust **affinidi-messaging-bridge** but their package placement in the Dart ecosystem needs team decision:

1. **`updateMediatorInstanceDeployment`** – Updates mediator deployment configuration
2. **`updateMediatorInstanceConfiguration`** – Updates mediator runtime configuration  
3. **`getMediatorsRequests`** – Retrieves mediator request logs
4. **`getMediatorCloudwatchMetricData`** – Gets CloudWatch metrics for mediators

These operations are Atlas service operations that manage mediator instances and follow the same DIDComm Gateway protocol as other ATM operations. They are included in the message type URIs list above for completeness, but their final implementation location (`atm_client` vs `mediator_client`) is pending team discussion.

## Summary

- **Total Service Operations**: 24 operations with 1:1 mapping to affinidi-messaging-bridge
  - **Atlas (AMA)**: 8 operations (4 with pending package placement decision)
  - **CIS**: 2 operations
  - **CWE**: 10 operations
  - **IAM**: 2 operations
  - **DVS**: 1 operation
  - **ACA**: 1 operation
- **Naming Convention**: `Atm<ServiceName>Client` per ADR 0075
- **Method Naming**: Using `operationId` from openapi.yaml as specified in ADR 0075
- **Implementation Note**: All 24 operations are specified above. The placement of 4 Atlas operations between `atm_client` and `mediator_client` packages is pending team decision.