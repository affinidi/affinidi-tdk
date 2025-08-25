# ATM Client Examples

This directory contains examples demonstrating the use of the ATM Client for interacting with Atlas (AMA) services via DIDComm.

## Prerequisites

1. **Generate Keys**: Run the following commands to generate test keys:
   ```bash
   openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem
   openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem
   ```

2. **Configure Mediator**: You need a DIDComm mediator to relay messages. You have several options:

   ### Option A: Use Affinidi Public Mediator
   Save one of these DIDs in `example/mediator/mediator_did.txt`:
   - Public: `did:web:euw1.mediator.affinidi.io:.well-known`
   - Internal testing: `did:web:internal-atn-mediator.dev.euw1.affinidi.io:.well-known`

   ### Option B: Create Your Own Mediator
   1. Visit https://portal.affinidi.com
   2. Create your own mediator instance for full control
   3. Save its DID in `example/mediator/mediator_did.txt`

3. **Environment Variables** (Optional): Instead of files, you can set:
   - `TEST_MEDIATOR_DID` - Mediator DID
   - `TEST_MEDIATOR_WITH_ACL_DID` - Mediator with ACL explicit_deny mode
   - `TEST_ALICE_PRIVATE_KEY_PEM` - Alice's private key (base64 encoded)
   - `TEST_BOB_PRIVATE_KEY_PEM` - Bob's private key (base64 encoded)

## Running the Example

```bash
dart run example/atlas_example.dart
```

## Atlas Operations Demonstrated

The example demonstrates all 8 Atlas (AMA) operations:

1. **getMediatorInstancesList** - List all mediator instances
2. **deployMediatorInstance** - Deploy a new mediator (commented out by default)
3. **getMediatorInstanceMetadata** - Get specific mediator metadata
4. **destroyMediatorInstance** - Destroy a mediator instance
5. **updateMediatorInstanceDeployment** - Update deployment configuration
6. **updateMediatorInstanceConfiguration** - Update runtime configuration
7. **getMediatorsRequests** - Retrieve mediator request logs
8. **getMediatorCloudwatchMetricData** - Get CloudWatch metrics

## Troubleshooting

### Connection Dropped Error
If you see "Connection has been dropped", this usually means:
- The mediator requires authentication or ACL configuration
- The mediator instance is not available
- Network connectivity issues

### ACL Denied Error
If you see "Delivery blocked due to ACLs", you need to:
1. Use a mediator with proper ACL configuration
2. Or create your own mediator at https://portal.affinidi.com

### WebSocket Issues
The example uses HTTP-only communication by default. WebSocket support can be enabled by modifying the `webSocketOptions` in the mediator client configuration.

## Notes

- The example uses peer DIDs for Alice's identity
- Authentication tokens are obtained automatically from the mediator
- All messages are encrypted to the Atlas service DID, not the mediator
- Response validation includes sender verification and message type checking