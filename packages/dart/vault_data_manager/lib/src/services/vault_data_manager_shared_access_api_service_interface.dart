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

  /// Revoke granular access to specific items (files/folders) in the virtual file system
  /// Revokes access rights to specific items for a subject
  ///
  /// Parameters:
  /// * [granteeDid] - revoke access to this DID
  /// * [itemIds] - List of item IDs (file or folder IDs) to revoke access from
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<void> revokeItemsAccessVfs({
    required String granteeDid,
    required List<String> itemIds,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Get granular access permissions for all items (files/folders)
  /// Retrieves all access rights for a subject
  ///
  /// Parameters:
  /// * [granteeDid] - get access permissions for this DID (returns all items the grantee can access)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<Response<consumer_iam.GetAccessOutput>> getItemsAccessVfs({
    required String granteeDid,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Sets the complete item access policy for a grantee.
  ///
  /// Parameters:
  /// * [granteeDid] - set access policy for this DID
  /// * [permissionGroups] - List of permission groups, each containing item IDs and permissions
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<void> setItemsAccessVfs({
    required String granteeDid,
    required List<({List<String> itemIds, Permissions permissions})>
        permissionGroups,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Updates node access with multiple permission groups in a single API call.
  /// This allows sending multiple Permission objects with different rights
  /// in one request, preserving separate permission groups.
  ///
  /// Parameters:
  /// * [granteeDid] - update access to this DID
  /// * [permissionGroups] - List of permission groups, each containing node IDs and permissions
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<void> updateNodeAccessVfsWithMultiplePermissions({
    required String granteeDid,
    required List<({List<String> nodeIds, Permissions permissions})>
        permissionGroups,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });
}
