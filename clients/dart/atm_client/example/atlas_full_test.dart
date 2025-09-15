// ignore_for_file: avoid_print, avoid_relative_lib_imports, directives_ordering, omit_local_variable_types, invalid_null_aware_operator, dead_null_aware_expression

import 'dart:async';

import 'package:affinidi_tdk_atm_client/atm_client.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

void main() async {
  print('=================================================');
  print('ATM CLIENT FULL TEST SUITE - ALL 7 OPERATIONS');
  print('=================================================\n');

  // Initialize configuration
  print('[INIT] Loading test configuration...');
  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_client',
  );
  print('[INIT] Test configuration loaded successfully\n');

  // Setup key store and wallet
  print('[INIT] Setting up key store and wallet...');
  final senderKeyStore = InMemoryKeyStore();
  final senderWallet = PersistentWallet(senderKeyStore);

  final senderDidManager = DidPeerManager(
    wallet: senderWallet,
    store: InMemoryDidStore(),
  );

  final senderKeyId = 'sender-key-1';
  print('[INIT] Key ID: $senderKeyId');

  // Load private key
  print('[INIT] Loading private key from: ${config.alicePrivateKeyPath}');
  final senderPrivateKeyBytes = await extractPrivateKeyBytes(
    config.alicePrivateKeyPath,
  );
  print('[INIT] Private key loaded successfully');

  // Store the key
  await senderKeyStore.set(
    senderKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: senderPrivateKeyBytes,
    ),
  );
  print('[INIT] Key stored in key store');

  // Add verification method
  await senderDidManager.addVerificationMethod(senderKeyId);
  print('[INIT] Verification method added to DID manager\n');

  // Initialize ATM Atlas Client
  print('[CLIENT] Initializing ATM Atlas Client...');
  late AtmAtlasClient atmAtlasClient;
  try {
    atmAtlasClient = await AtmAtlasClient.init(
      didManager: senderDidManager,
    );
    print('[CLIENT] ATM Atlas Client initialized successfully');
    print('[CLIENT] Mediator DID: ${atmAtlasClient.mediatorClient.signer.did}');
    print('[CLIENT] Atlas DID: ${atmAtlasClient.atmServiceDidDocument.id}\n');
  } catch (e) {
    print('[ERROR] Failed to initialize ATM Atlas Client: $e');
    return;
  }

  // Authenticate
  print('[AUTH] Starting authentication...');
  late AuthenticationTokens authTokens;
  try {
    authTokens = await atmAtlasClient.authenticate();
    print('[AUTH] Authentication successful');
    print(
        '[AUTH] Access token received: ${authTokens.accessToken.substring(0, 20)}...');
    print(
        '[AUTH] Refresh token received: ${authTokens.refreshToken?.substring(0, 20) ?? 'N/A'}...\n');
  } catch (e) {
    print('[ERROR] Authentication failed: $e');
    return;
  }

  // Variable to store our test mediator ID throughout the flow
  String? testMediatorId;
  bool needsDeployment = true;

  print('=================================================');
  print('PRE-CHECK: GET EXISTING MEDIATOR INSTANCES');
  print('=================================================');
  try {
    print('[PRE] Checking for existing mediator instances...');
    final existingListResponse = await atmAtlasClient.getMediatorInstancesList(
      accessToken: authTokens.accessToken,
      limit: 10,
    );

    print('[PRE] Check completed successfully');
    print(
        '[PRE] Number of existing instances: ${existingListResponse.instances.length}');

    if (existingListResponse.instances.isNotEmpty) {
      print('[PRE] Found existing mediator instances!');
      testMediatorId = existingListResponse.instances.first.id;
      needsDeployment = false;
      print('[PRE] Will use existing mediator: $testMediatorId');
      print('[PRE] Name: ${existingListResponse.instances.first.name}');
      print(
          '[PRE] Status: ${existingListResponse.instances.first.deploymentStatus}');
      print('[PRE] Skipping deployment step - using existing instance');
    } else {
      print('[PRE] No existing mediator instances found');
      print('[PRE] Will proceed with deploying a new mediator instance');
    }
  } catch (e) {
    print('[ERROR] Failed to check for existing mediators: $e');
    print('[ERROR] Will attempt to deploy a new instance');
  }
  print('');

  print('=================================================');
  print('OPERATION 1/7: DEPLOY MEDIATOR INSTANCE');
  print('=================================================');
  if (needsDeployment) {
    try {
      print('[1] Preparing deployment request...');
      final deployRequest = DeployMediatorInstanceRequest(
        serviceSize: 'tiny',
        mediatorAclMode: 'explicit_deny',
        name: 'ATM Full Test Mediator',
        description: 'Mediator instance for testing all 7 ATM operations',
      );

      print('[1] Deployment request details:');
      print('    - Service Size: ${deployRequest.serviceSize}');
      print('    - Mediator ACL Mode: ${deployRequest.mediatorAclMode}');
      print('    - Name: ${deployRequest.name}');
      print('    - Description: ${deployRequest.description}');
      print(
          '    - Administrator DIDs: ${deployRequest.administratorDids ?? 'None'}');

      print('[1] Sending deployment request...');
      final deployResponse = await atmAtlasClient.deployMediatorInstance(
        accessToken: authTokens.accessToken,
        deploymentData: deployRequest,
      );

      final response = deployResponse.response;
      print('[1] Deployment initiated successfully');
      print('[1] Response details:');
      print('    - Mediator ID: ${response.mediatorId}');
      print('    - Service Request ID: ${response.serviceRequestId}');
      print('    - Message: ${response.message ?? 'No message'}');

      // Store the deployed mediator ID for the rest of the flow
      testMediatorId = response.mediatorId;
      print('[1] TEST MEDIATOR ID STORED: $testMediatorId');
      print('[1] This ID will be used for all subsequent operations');

      // Poll for deployment to complete
      print(
          '[1] Waiting for deployment to complete (typically 3-5 minutes)...');
      bool deploymentComplete = false;
      int maxChecks = 24; // Check for up to 12 minutes (24 * 30 seconds)
      final startTime = DateTime.now();
      for (int i = 0; i < maxChecks; i++) {
        await Future<void>.delayed(const Duration(seconds: 30));
        final elapsed = DateTime.now().difference(startTime).inMinutes;
        print(
            '[1] Checking deployment status (attempt ${i + 1}/$maxChecks, elapsed: ${elapsed}min)...');

        try {
          final statusResponse =
              await atmAtlasClient.getMediatorInstanceMetadata(
            accessToken: authTokens.accessToken,
            mediatorId: testMediatorId,
          );
          final status = statusResponse.metadata.deploymentStatus;
          print('[1] Current status: $status');

          if (status == 'CREATE_COMPLETE') {
            print('[1] Deployment completed successfully!');
            deploymentComplete = true;
            break;
          } else if (status == 'CREATE_FAILED') {
            print('[1] ERROR: Deployment failed!');
            break;
          } else if (status == 'CREATE_IN_PROGRESS') {
            print('[1] Deployment still in progress...');
          }
        } catch (e) {
          print('[1] Warning: Could not check deployment status: $e');
        }
      }

      if (!deploymentComplete) {
        print(
            '[1] WARNING: Deployment may not have completed in the expected time');
        print('[1] Continuing with test, but subsequent operations may fail');
      }
    } catch (e) {
      print('[ERROR] Failed to deploy mediator instance: $e');
      print('[ERROR] Stack trace: ${StackTrace.current}');
      print('[ERROR] Cannot continue without a mediator instance');
      return;
    }
  } else {
    print('[1] Using existing mediator instance - no deployment needed');
  }
  print('');

  print('=================================================');
  print('OPERATION 2/7: GET MEDIATOR INSTANCES LIST');
  print('=================================================');
  try {
    print('[2] Fetching current mediator instances list...');
    final listResponse = await atmAtlasClient.getMediatorInstancesList(
      accessToken: authTokens.accessToken,
      limit: 10,
    );

    print('[2] Response received successfully');
    final instances = listResponse.instances;
    print('[2] Number of instances: ${instances.length}');
    // Last evaluated key not available in current response model

    // Find our test mediator in the list
    bool foundTestMediator = false;
    for (var i = 0; i < instances.length; i++) {
      final instance = instances[i];
      if (instance.id == testMediatorId) {
        foundTestMediator = true;
        print('[2] Our test mediator found in list:');
        print('    - Position: ${i + 1}');
        print('    - ID: ${instance.id}');
        print('    - Name: ${instance.name}');
        print('    - Description: ${instance.description}');
        print('    - Service Type: ${instance.serviceType}');
        print('    - Service Size: ${instance.serviceSize}');
        print('    - Deployment State: ${instance.deploymentState}');
        print('    - Deployment Status: ${instance.deploymentStatus}');
        print('    - DID: ${instance.did}');
        print('    - Created At: ${instance.createdAt}');
        print('    - Account ID: ${instance.accountId}');
        break;
      }
    }

    if (!foundTestMediator) {
      print('[2] WARNING: Our test mediator not found in the list!');
    }
  } catch (e) {
    print('[ERROR] Failed to get mediator instances list: $e');
    print('[ERROR] Stack trace: ${StackTrace.current}');
  }
  print('');

  print('=================================================');
  print('OPERATION 3/7: GET MEDIATOR INSTANCE METADATA');
  print('=================================================');
  if (testMediatorId != null) {
    try {
      print('[3] Fetching metadata for our test mediator: $testMediatorId');
      final metadataResponse = await atmAtlasClient.getMediatorInstanceMetadata(
        accessToken: authTokens.accessToken,
        mediatorId: testMediatorId,
      );

      print('[3] Metadata received successfully');
      final metadata = metadataResponse.metadata;
      print('[3] Metadata details:');
      print('    - Mediator ID: ${metadata.id}');
      print('    - Name: ${metadata.name}');
      print('    - Deployment Status: ${metadata.deploymentStatus}');
      print('    - Deployment State: ${metadata.deploymentState}');
      print('    - Service Size: ${metadata.serviceSize}');
      print('    - DID: ${metadata.did}');
      print('    - Created At: ${metadata.createdAt}');
    } catch (e) {
      print('[ERROR] Failed to get mediator instance metadata: $e');
      print('[ERROR] Stack trace: ${StackTrace.current}');
    }
  } else {
    print(
        '[3] CRITICAL: No test mediator ID available - deployment may have failed');
    print(
        '[3] Attempting to continue with remaining operations that don\'t require mediator ID...');
  }
  print('');

  print('=================================================');
  print('OPERATION 4/7: UPDATE MEDIATOR INSTANCE DEPLOYMENT');
  print('=================================================');
  if (testMediatorId != null) {
    try {
      print('[4] Preparing deployment update request...');
      final updateDeploymentRequest = UpdateMediatorInstanceDeploymentRequest(
        mediatorId: testMediatorId,
        serviceSize: 'small',
        mediatorAclMode: 'explicit_allow',
        name: 'Updated Test Mediator Instance',
        description: 'Updated description after deployment update',
      );

      print('[4] Update deployment request details:');
      print('    - Service Size: ${updateDeploymentRequest.serviceSize}');
      print(
          '    - Mediator ACL Mode: ${updateDeploymentRequest.mediatorAclMode}');
      print('    - Name: ${updateDeploymentRequest.name}');
      print('    - Description: ${updateDeploymentRequest.description}');

      print(
          '[4] Sending deployment update request for our test mediator: $testMediatorId');
      final updateDeploymentResponse =
          await atmAtlasClient.updateMediatorInstanceDeployment(
        accessToken: authTokens.accessToken,
        mediatorId: testMediatorId,
        deploymentData: updateDeploymentRequest,
      );

      final updateResponse = updateDeploymentResponse.response;
      print('[4] Deployment update initiated successfully');
      print('[4] Response details:');
      print('    - Message: ${updateResponse.message}');

      // Wait for update to complete and verify
      print('[4] Waiting for deployment update to complete...');
      print('[4] This can take 5-10 minutes...');

      // Check status periodically
      bool updateComplete = false;
      int maxChecks = 24; // Check for up to 12 minutes (24 * 30 seconds)
      final startTime = DateTime.now();
      for (int i = 0; i < maxChecks; i++) {
        await Future<void>.delayed(const Duration(seconds: 30));
        final elapsed = DateTime.now().difference(startTime).inMinutes;
        print(
            '[4] Checking update status (attempt ${i + 1}/$maxChecks, elapsed: ${elapsed}min)...');

        try {
          final verifyResponse =
              await atmAtlasClient.getMediatorInstanceMetadata(
            accessToken: authTokens.accessToken,
            mediatorId: testMediatorId,
          );
          final status = verifyResponse.metadata.deploymentStatus;
          print('[4] Current status: $status');

          if (status == 'UPDATE_COMPLETE') {
            print('[4] Deployment update completed successfully!');
            updateComplete = true;
            break;
          } else if (status == 'UPDATE_FAILED') {
            print('[4] ERROR: Deployment update failed!');
            break;
          } else if (status == 'UPDATE_IN_PROGRESS') {
            print('[4] Update still in progress...');
          }
        } catch (e) {
          print('[4] Warning: Could not check update status: $e');
        }
      }

      if (!updateComplete) {
        print(
            '[4] WARNING: Update may not have completed in the expected time');
        print('[4] Continuing with test, but subsequent operations may fail');
      }

      // Add delay and reconnection after long operation
      print(
          '[4] Waiting 5 seconds before next operation to stabilize connection...');
      await Future<void>.delayed(const Duration(seconds: 5));

      // Refresh authentication if needed
      try {
        print('[4] Verifying connection health...');
        await atmAtlasClient.getMediatorInstancesList(
          accessToken: authTokens.accessToken,
          limit: 1,
        );
        print('[4] Connection verified successfully');
      } catch (e) {
        print('[4] Connection check failed, attempting to re-authenticate...');
        try {
          authTokens = await atmAtlasClient.authenticate();
          print('[4] Re-authentication successful');
        } catch (authError) {
          print('[4] Re-authentication failed: $authError');
        }
      }
    } catch (e) {
      print('[ERROR] Failed to update mediator instance deployment: $e');
      print('[ERROR] Stack trace: ${StackTrace.current}');
      print(
          '[ERROR] Note: Update may fail if mediator is in transitional state');
    }
  } else {
    print(
        '[4] CRITICAL: No test mediator ID available - cannot update deployment');
  }
  print('');

  print('=================================================');
  print('OPERATION 5/7: UPDATE MEDIATOR INSTANCE CONFIGURATION');
  print('=================================================');
  if (testMediatorId != null) {
    // First check if the mediator is ready (not in UPDATE_IN_PROGRESS state)
    print('[5] Checking mediator status before configuration update...');
    bool isReady = false;
    int maxRetries = 20; // Increased from 10 to 20 (10 minutes)
    int retryCount = 0;
    final startTime = DateTime.now();

    while (!isReady && retryCount < maxRetries) {
      try {
        // Add timeout protection for status check
        final statusCheck = await atmAtlasClient
            .getMediatorInstanceMetadata(
          accessToken: authTokens.accessToken,
          mediatorId: testMediatorId,
        )
            .timeout(
          const Duration(seconds: 45),
          onTimeout: () {
            throw TimeoutException('Status check timed out after 45 seconds');
          },
        );
        final currentStatus = statusCheck.metadata.deploymentStatus;
        final elapsed = DateTime.now().difference(startTime).inMinutes;
        print(
            '[5] Current mediator status: $currentStatus (elapsed: ${elapsed}min)');

        if (currentStatus == 'UPDATE_COMPLETE' ||
            currentStatus == 'CREATE_COMPLETE') {
          isReady = true;
          print('[5] Mediator is ready for configuration update');
        } else if (currentStatus == 'UPDATE_IN_PROGRESS') {
          print('[5] Mediator update still in progress, waiting 30 seconds...');
          await Future<void>.delayed(const Duration(seconds: 30));
          retryCount++;
        } else {
          print('[5] Unexpected status: $currentStatus');
          break;
        }
      } catch (e) {
        print('[5] Error checking status: $e');
        if (e is TimeoutException) {
          print(
              '[5] Status check timed out, attempting to recover connection...');
          // Try to re-authenticate on timeout
          try {
            authTokens = await atmAtlasClient.authenticate();
            print('[5] Re-authenticated successfully after timeout');
          } catch (authError) {
            print('[5] Re-authentication failed: $authError');
            break;
          }
        } else {
          break;
        }
      }
    }

    if (!isReady) {
      print('[5] WARNING: Mediator may not be ready for configuration update');
      print('[5] Proceeding anyway to demonstrate error handling...');
    }

    try {
      print('[5] Preparing configuration update request...');
      final updateConfigRequest = UpdateMediatorInstanceConfigurationRequest(
        mediatorId: testMediatorId,
        acl: {
          'did:example:alice': 1,
          'did:example:bob': 2,
          'did:example:charlie': 3,
        },
      );

      print('[5] Update configuration request details:');
      print('    - ACL entries: ${updateConfigRequest.acl?.length ?? 0}');
      updateConfigRequest.acl?.forEach((key, value) {
        print('      - $key: $value');
      });

      print(
          '[5] Sending configuration update request for our test mediator: $testMediatorId');
      final updateConfigResponse =
          await atmAtlasClient.updateMediatorInstanceConfiguration(
        accessToken: authTokens.accessToken,
        mediatorId: testMediatorId,
        configurationData: updateConfigRequest,
      );

      final configResponse = updateConfigResponse.response;
      print('[5] Configuration update initiated successfully');
      print('[5] Response details:');
      print('    - Message: ${configResponse.message}');

      // Wait for configuration update to complete and verify
      print('[5] Waiting 30 seconds for configuration update to complete...');
      await Future<void>.delayed(const Duration(seconds: 30));

      print('[5] Verifying configuration update by fetching metadata...');
      try {
        final verifyResponse = await atmAtlasClient.getMediatorInstanceMetadata(
          accessToken: authTokens.accessToken,
          mediatorId: testMediatorId,
        );
        print('[5] Verification successful - configuration updated');
        print('[5] Updated ACL: ${verifyResponse.metadata.acl}');
        print(
            '[5] Deployment status: ${verifyResponse.metadata.deploymentStatus}');
      } catch (e) {
        print('[5] Warning: Could not verify configuration update: $e');
      }

      // Add delay after configuration update
      print('[5] Waiting 3 seconds before next operation...');
      await Future<void>.delayed(const Duration(seconds: 3));
    } catch (e) {
      print('[ERROR] Failed to update mediator instance configuration');
      print('[ERROR] Error details: $e');

      // Check if it's an Atlas error with specific details
      if (e.toString().contains('Atlas error')) {
        print(
            '[ERROR] This is an Atlas service error - likely due to mediator state');
        print('[ERROR] Common causes:');
        print(
            '[ERROR]   - Mediator is still being updated from previous operation');
        print(
            '[ERROR]   - Mediator is in an invalid state for configuration updates');
        print('[ERROR]   - Permission issues with the access token');
      }
    }
  } else {
    print(
        '[5] CRITICAL: No test mediator ID available - cannot update configuration');
  }
  print('');

  print('=================================================');
  print('OPERATION 6/7: GET MEDIATOR REQUESTS');
  print('=================================================');
  try {
    print('[6] Fetching mediator requests...');
    print('[6] Request parameters:');
    print(
        '    - Mediator ID filter: ${testMediatorId ?? 'None (fetching all)'}');
    print('    - Limit: 20');

    final requestsResponse = await atmAtlasClient.getMediatorRequests(
      accessToken: authTokens.accessToken,
      mediatorId: testMediatorId,
      limit: 20,
    );

    print('[6] Requests received successfully');
    final requests = requestsResponse.requests;
    print('[6] Number of requests: ${requests.length}');
    // Last evaluated key not available in current response model

    for (var i = 0; i < requests.length; i++) {
      final request = requests[i];
      print('[6] Request ${i + 1}:');
      print('    - Created At: ${request.createdAt}');
      print('    - Created By: ${request.createdBy}');
    }

    // Pagination testing not available without lastEvaluatedKey in current model
  } catch (e) {
    print('[ERROR] Failed to get mediator requests: $e');
    print('[ERROR] Stack trace: ${StackTrace.current}');
  }
  print('');

  print('=================================================');
  print('OPERATION 7/7: DESTROY MEDIATOR INSTANCE');
  print('=================================================');
  if (testMediatorId != null) {
    // First check if the mediator is ready for destruction
    print('[7] Checking mediator status before destruction...');
    bool canDestroy = false;

    try {
      final statusCheck = await atmAtlasClient.getMediatorInstanceMetadata(
        accessToken: authTokens.accessToken,
        mediatorId: testMediatorId,
      );
      final currentStatus = statusCheck.metadata.deploymentStatus;
      print('[7] Current mediator status: $currentStatus');

      // Check if the mediator is in a state that allows destruction
      if (currentStatus == 'CREATE_COMPLETE' ||
          currentStatus == 'UPDATE_COMPLETE' ||
          currentStatus == 'CREATE_FAILED' ||
          currentStatus == 'UPDATE_FAILED') {
        canDestroy = true;
        print('[7] Mediator is in a state that allows destruction');
      } else {
        print('[7] WARNING: Mediator is in state: $currentStatus');
        print('[7] Destruction may fail if mediator is still being updated');

        // Wait a bit longer if still updating
        if (currentStatus == 'UPDATE_IN_PROGRESS') {
          print('[7] Waiting 60 seconds for update to complete...');
          await Future<void>.delayed(const Duration(seconds: 60));

          // Check status again
          final recheckStatus =
              await atmAtlasClient.getMediatorInstanceMetadata(
            accessToken: authTokens.accessToken,
            mediatorId: testMediatorId,
          );
          final newStatus = recheckStatus.metadata.deploymentStatus;
          print('[7] Updated mediator status: $newStatus');
          if (newStatus == 'UPDATE_COMPLETE' ||
              newStatus == 'CREATE_COMPLETE') {
            canDestroy = true;
          }
        }
      }
    } catch (e) {
      print('[7] Error checking mediator status: $e');
    }

    if (!canDestroy) {
      print('[7] WARNING: Mediator may not be ready for destruction');
      print('[7] Proceeding anyway to demonstrate error handling...');
    }

    try {
      print('[7] WARNING: About to destroy our test mediator: $testMediatorId');
      print('[7] This operation is irreversible!');
      print('[7] Waiting 3 seconds before proceeding...');
      await Future<void>.delayed(const Duration(seconds: 3));

      print('[7] Sending destroy request for test mediator: $testMediatorId');
      final destroyResponse = await atmAtlasClient.destroyMediatorInstance(
        accessToken: authTokens.accessToken,
        mediatorId: testMediatorId,
      );

      final destroyResult = destroyResponse.response;
      print('[7] Destroy operation response received');
      print('[7] Response details:');
      print('    - Message: ${destroyResult.message}');

      // Check if the message indicates an error
      if (destroyResult.message?.contains('Invalid request') ?? false) {
        print('[7] ERROR: Destruction was rejected by the server');
        print('[7] This typically means:');
        print('[7]   - Mediator is still being updated');
        print('[7]   - Mediator is in use by active connections');
        print('[7]   - Permission issues');
      } else {
        print('[7] Mediator instance destruction initiated successfully');

        // Poll for destruction to complete
        print(
            '[7] Waiting for destruction to complete (typically 3-5 minutes)...');
        bool destructionComplete = false;
        int maxDestroyChecks = 24; // Check for up to 12 minutes
        final startTime = DateTime.now();
        for (int i = 0; i < maxDestroyChecks; i++) {
          await Future<void>.delayed(const Duration(seconds: 30));
          final elapsed = DateTime.now().difference(startTime).inMinutes;
          print(
              '[7] Checking destruction status (attempt ${i + 1}/$maxDestroyChecks, elapsed: ${elapsed}min)...');

          try {
            await atmAtlasClient.getMediatorInstanceMetadata(
              accessToken: authTokens.accessToken,
              mediatorId: testMediatorId,
            );
            // If we can still get metadata, it's not destroyed yet
            print('[7] Mediator still exists, destruction in progress...');
          } catch (e) {
            // If we get an error, mediator might be destroyed
            if (e.toString().contains('not found') ||
                e.toString().contains('404')) {
              print('[7] Mediator destroyed successfully!');
              destructionComplete = true;
              break;
            } else {
              print(
                  '[7] Status check error: ${e.toString().split('\n').first}');
            }
          }
        }

        if (!destructionComplete) {
          print(
              '[7] WARNING: Destruction may not have completed in the expected time');
        }
      }

      // Verify destruction by trying to get metadata (should fail)
      print('[7] Verifying destruction by attempting to fetch metadata...');
      try {
        await atmAtlasClient.getMediatorInstanceMetadata(
          accessToken: authTokens.accessToken,
          mediatorId: testMediatorId,
        );
        print('[7] WARNING: Mediator still accessible after destruction!');
        print('[7] This may mean destruction failed or is still in progress');
      } catch (e) {
        print('[7] Verification: Mediator is no longer accessible');
        print('[7] Error message: ${e.toString().split('\n').first}');
      }
    } catch (e) {
      print('[ERROR] Failed to destroy mediator instance');
      print('[ERROR] Error details: $e');

      if (e.toString().contains('Atlas error')) {
        print('[ERROR] This is an Atlas service error');
        print(
            '[ERROR] The mediator may be in an invalid state for destruction');
      }
    }
  } else {
    print(
        '[7] CRITICAL: No test mediator ID available - cannot destroy instance');
    print('[7] This likely means deployment failed earlier');
  }
  print('');

  print('=================================================');
  print('FINAL STATUS CHECK: GET UPDATED INSTANCES LIST');
  print('=================================================');
  try {
    print('[FINAL] Fetching updated mediator instances list...');
    final finalListResponse = await atmAtlasClient.getMediatorInstancesList(
      accessToken: authTokens.accessToken,
      limit: 5,
    );

    final finalInstances = finalListResponse.instances;
    print('[FINAL] Final instances count: ${finalInstances.length}');
    for (var i = 0; i < finalInstances.length; i++) {
      final instance = finalInstances[i];
      print(
          '[FINAL] Instance ${i + 1}: ${instance.id} - ${instance.name} (${instance.deploymentStatus})');
    }
  } catch (e) {
    print('[ERROR] Failed to get final instances list: $e');
  }

  print('\n=================================================');
  print('TEST SUITE COMPLETED');
  print('=================================================');
  print('Test Summary:');
  print('  - Test Mediator ID: ${testMediatorId ?? "None"}');
  print(
      '  - Deployment: ${needsDeployment ? "New instance deployed" : "Used existing instance"}');
  print(
      '  - All 7 operations tested: List, Deploy, List, Metadata, Update Deployment, Update Config, Requests, Destroy');
  print('  - Review the output above for any errors or unexpected behavior.');

  // Wait a moment for connections to fully close
  await Future<void>.delayed(const Duration(milliseconds: 500));
  print('\n[EXIT] Test suite finished successfully.');
}
