# ATM Client Public API Specification

*Aligned with ADR 0075 and verified against affinidi-messaging-bridge implementation*

## Context

This specification defines the public API for the **Dart ATM Client** package, which provides communication with the Atlas (AMA) service via the **DIDComm Gateway**. The API design follows **ADR 0075** and maintains 1:1 mapping with the Rust **affinidi-messaging-bridge** implementation for Atlas operations.

**Dart ATM Client** – A Dart package that contains clients for communication with the **DIDComm Gateway** and DIDComm message types.

**DIDComm Gateway** – Allows users to connect to the Atlas (AMA) service via DIDComm protocols.

**affinidi-messaging-bridge** – The Rust reference implementation that defines the operations and message formats for ATM communication.

## Code Conventions

- Client naming: `Atm<ServiceName>Client` (per ADR 0075)
  - Drop unnecessary `Affinidi` prefix and `Service` suffixes
  - Example: `AtmMessagingAtlasClient`
- Method naming: Using `operationId` from `openapi.yaml`
- Message types: Follow pattern `affinidi.io/operations/{service}/{operation}`

## Client Class

### AtmMessagingAtlasClient

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
```

## Open for Discussion

The following Atlas operations (shown in AtmMessagingAtlasClient above) are implemented in the Rust **affinidi-messaging-bridge** but their package placement in the Dart ecosystem needs team decision:

1. **`updateMediatorInstanceDeployment`** – Updates mediator deployment configuration
2. **`updateMediatorInstanceConfiguration`** – Updates mediator runtime configuration  
3. **`getMediatorsRequests`** – Retrieves mediator request logs
4. **`getMediatorCloudwatchMetricData`** – Gets CloudWatch metrics for mediators

These operations are Atlas service operations that manage mediator instances and follow the same DIDComm Gateway protocol as other ATM operations. They are included in the message type URIs list above for completeness, but their final implementation location (`atm_client` vs `mediator_client`) is pending team discussion.

## Summary

- **Total Atlas (AMA) Operations**: 8 operations with 1:1 mapping to affinidi-messaging-bridge
  - `getMediatorInstancesList`
  - `deployMediatorInstance`
  - `getMediatorInstanceMetadata`
  - `destroyMediatorInstance`
  - `updateMediatorInstanceDeployment`
  - `updateMediatorInstanceConfiguration`
  - `getMediatorsRequests`
  - `getMediatorCloudwatchMetricData`
- **Naming Convention**: `AtmMessagingAtlasClient` per ADR 0075
- **Method Naming**: Using `operationId` from openapi.yaml as specified in ADR 0075
- **Implementation Note**: The placement of 4 Atlas operations (`updateMediatorInstanceDeployment`, `updateMediatorInstanceConfiguration`, `getMediatorsRequests`, `getMediatorCloudwatchMetricData`) between `atm_client` and `mediator_client` packages is pending team decision.