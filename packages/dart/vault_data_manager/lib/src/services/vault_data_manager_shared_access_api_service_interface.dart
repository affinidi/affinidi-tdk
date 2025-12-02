import 'package:affinidi_tdk_consumer_iam_client/affinidi_tdk_consumer_iam_client.dart'
    as consumer_iam;
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:dio/dio.dart';

/// Interface to manage shared access for vault cloud storages.
abstract interface class VaultDataManagerSharedAccessApiServiceInterface {
  /// Grant access to the virtual file system
  /// Grants access rights to a subject for the virtual file system
  ///
  /// Parameters:
  /// * [granteeDid] - grant access to this DID
  /// * [permissions] - the rights [RightsEnum] to grant to the grantee DID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<void> grantAccessVfs(
      {required String granteeDid,
      required Permissions permissions,
      CancelToken? cancelToken,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? extra,
      ValidateStatus? validateStatus,
      VaultProgressCallback? onSendProgress,
      VaultProgressCallback? onReceiveProgress});

  /// Update access to the virtual file system
  /// Updates access rights to a subject for the virtual file system
  ///
  /// Parameters:
  /// * [granteeDid] - update access to this DID
  /// * [permissions] - the rights [Permissions] to update for the grantee DID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<Response<UpdateAccessOutput>> updateAccessVfs({
    required String granteeDid,
    required Permissions permissions,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Revoke access to the virtual file system
  /// Revokes access rights to a subject for the virtual file system
  ///
  /// Parameters:
  /// * [granteeDid] - revoke access to this DID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<void> revokeAccessVfs({
    required String granteeDid,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Grant granular access to specific nodes (files/folders) in the virtual file system
  /// Grants access rights to specific nodes for a subject
  ///
  /// Parameters:
  /// * [granteeDid] - grant access to this DID
  /// * [nodeIds] - List of node IDs (file or folder IDs) to grant access to
  /// * [permissions] - the rights [Permissions] to grant to the grantee DID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<void> grantNodeAccessVfs({
    required String granteeDid,
    required List<String> nodeIds,
    required Permissions permissions,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Revoke granular access to specific nodes (files/folders) in the virtual file system
  /// Revokes access rights to specific nodes for a subject
  ///
  /// Parameters:
  /// * [granteeDid] - revoke access to this DID
  /// * [nodeIds] - List of node IDs (file or folder IDs) to revoke access from
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<void> revokeNodeAccessVfs({
    required String granteeDid,
    required List<String> nodeIds,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Update granular access to specific nodes (files/folders) in the virtual file system
  /// Updates access rights to specific nodes for a subject. This can be used to add new nodes
  /// to existing permissions or update existing node permissions.
  ///
  /// Parameters:
  /// * [granteeDid] - update access to this DID
  /// * [nodeIds] - List of node IDs (file or folder IDs) to update access for
  /// * [permissions] - the rights [Permissions] to update for the grantee DID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<void> updateNodeAccessVfs({
    required String granteeDid,
    required List<String> nodeIds,
    required Permissions permissions,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Get granular access permissions for specific nodes (files/folders) in the virtual file system
  /// Retrieves access rights for a subject
  ///
  /// Parameters:
  /// * [granteeDid] - get access permissions for this DID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<Response<consumer_iam.GetAccessOutput>> getNodeAccessVfs({
    required String granteeDid,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });
}
