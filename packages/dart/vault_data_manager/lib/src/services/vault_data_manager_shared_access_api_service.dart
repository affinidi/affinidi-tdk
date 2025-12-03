// ignore_for_file: avoid_print

import 'package:affinidi_tdk_consumer_iam_client/affinidi_tdk_consumer_iam_client.dart'
    as consumer_iam;
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';

import '../exceptions/tdk_exception_type.dart';
import '../extensions/permissions_extensions.dart';
import 'vault_data_manager_shared_access_api_service_interface.dart';

/// A service to grant or revoke shared access to vault cloud storages.
class VaultDataManagerSharedAccessApiService
    implements VaultDataManagerSharedAccessApiServiceInterface {
  /// The IAM client to make API calls for profile-level access.
  final AffinidiTdkIamClient? affinidiTdkIamClient;

  /// The Consumer IAM client to make granular access API calls for node-level access.
  final consumer_iam.AffinidiTdkConsumerIamClient? affinidiTdkConsumerIamClient;

  AuthzApi? _authzApi;
  consumer_iam.AuthzApi? _consumerAuthzApi;

  /// Converts [Permissions] to Consumer IAM [RightsEnum] list.
  List<consumer_iam.RightsEnum> _permissionsToConsumerRights(
      Permissions permissions) {
    switch (permissions) {
      case Permissions.read:
        return [consumer_iam.RightsEnum.vfsRead];
      case Permissions.write:
        return [consumer_iam.RightsEnum.vfsWrite];
      case Permissions.all:
        return [
          consumer_iam.RightsEnum.vfsRead,
          consumer_iam.RightsEnum.vfsWrite
        ];
    }
  }

  /// Creates a new instance of [VaultDataManagerSharedAccessApiService].
  ///
  /// [affinidiTdkIamClient] - optional IAM client for profile-level access methods.
  /// [affinidiTdkConsumerIamClient] - optional Consumer IAM client for node-level access methods.
  /// At least one client must be provided to use the corresponding methods.
  VaultDataManagerSharedAccessApiService({
    this.affinidiTdkIamClient,
    this.affinidiTdkConsumerIamClient,
  }) {
    _authzApi = affinidiTdkIamClient?.getAuthzApi();
    _consumerAuthzApi = affinidiTdkConsumerIamClient?.getAuthzApi();
  }

  @override
  Future<void> grantAccessVfs({
    required String granteeDid,
    required Permissions permissions,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  }) async {
    if (_authzApi == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'IAM client is required for profile-level access',
          code: TdkExceptionType.unableToGrantAccess.code,
        ),
        StackTrace.current,
      );
    }

    try {
      final grantAccessInputBuilder = GrantAccessInputBuilder()
        ..granteeDid = granteeDid
        ..rights = ListBuilder(permissions.toRights());

      final grantAccessInput = grantAccessInputBuilder.build();

      final grantAccessVfsResponse =
          await _authzApi!.grantAccessVfs(grantAccessInput: grantAccessInput);
      final isAccessGranted = grantAccessVfsResponse.data!.success == true;

      if (!isAccessGranted) {
        Error.throwWithStackTrace(
            TdkException(
              message: 'Failed to grant access to $granteeDid',
              code: TdkExceptionType.unableToGrantAccess.code,
            ),
            StackTrace.current);
      }
    } on DioException catch (e, stackTrace) {
      final errorResponse = e.response;
      if (errorResponse == null) {
        rethrow;
      }

      final isAlreadyGranted = errorResponse.statusCode == 409 &&
          errorResponse.data != null &&
          (errorResponse.data as Map<String, dynamic>)['name'] ==
              'AlreadyExistsError';

      if (isAlreadyGranted) {
        Error.throwWithStackTrace(
            TdkException(
              message: 'Failed to grant access to $granteeDid',
              code: TdkExceptionType.unableToGrantAccessAlreadyGranted.code,
              originalMessage: e.toString(),
            ),
            stackTrace);
      }
    } on TdkException catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
          TdkException(
            message: 'Failed to grant access to $granteeDid',
            code: TdkExceptionType.unableToGrantAccess.code,
            originalMessage: e.toString(),
          ),
          stackTrace);
    }
  }

  @override
  Future<void> revokeAccessVfs({
    required String granteeDid,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  }) async {
    if (_authzApi == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'IAM client is required for profile-level access',
          code: TdkExceptionType.unableToRevokeAccess.code,
        ),
        StackTrace.current,
      );
    }

    try {
      await _authzApi!.deleteAccessVfs(granteeDid: granteeDid);
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
          TdkException(
            message: 'Failed to revoke access from $granteeDid',
            code: TdkExceptionType.unableToRevokeAccess.code,
            originalMessage: e.toString(),
          ),
          stackTrace);
    }
  }

  @override
  Future<Response<UpdateAccessOutput>> updateAccessVfs({
    required String granteeDid,
    required Permissions permissions,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  }) async {
    if (_authzApi == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'IAM client is required for profile-level access',
          code: TdkExceptionType.unableToUpdateAccess.code,
        ),
        StackTrace.current,
      );
    }

    try {
      final updateAccessInputBuilder = UpdateAccessInputBuilder()
        ..rights = ListBuilder(permissions.toRights());
      final updateAccessInput = updateAccessInputBuilder.build();
      final response = await _authzApi!.updateAccessVfs(
        granteeDid: granteeDid,
        updateAccessInput: updateAccessInput,
      );

      return response;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
          TdkException(
            message: 'Failed to update access for $granteeDid',
            code: TdkExceptionType.unableToUpdateAccess.code,
          ),
          stackTrace);
    }
  }

  @override
  Future<void> grantItemAccessVfs({
    required String granteeDid,
    required List<String> itemIds,
    required Permissions permissions,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  }) async {
    if (_consumerAuthzApi == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Consumer IAM client is required for item-level access',
          code: TdkExceptionType.unableToGrantAccess.code,
        ),
        StackTrace.current,
      );
    }

    try {
      final permission = consumer_iam.PermissionBuilder()
        ..rights = ListBuilder<consumer_iam.RightsEnum>(
            _permissionsToConsumerRights(permissions))
        ..nodeIds = ListBuilder<String>(
            itemIds); 

      final updateAccessInput = consumer_iam.UpdateAccessInputBuilder()
        ..permissions =
            ListBuilder<consumer_iam.Permission>([permission.build()]);

      await _consumerAuthzApi!.updateAccessVfs(
        granteeDid: granteeDid,
        updateAccessInput: updateAccessInput.build(),
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        validateStatus: validateStatus,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to grant item access to $granteeDid',
          code: TdkExceptionType.unableToGrantAccess.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<void> revokeItemAccessVfs({
    required String granteeDid,
    required List<String> itemIds,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  }) async {
    if (_consumerAuthzApi == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Consumer IAM client is required for item-level access',
          code: TdkExceptionType.unableToRevokeAccess.code,
        ),
        StackTrace.current,
      );
    }

    try {
      await _consumerAuthzApi!.deleteAccessVfs(
        granteeDid: granteeDid,
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        validateStatus: validateStatus,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to revoke item access from $granteeDid',
          code: TdkExceptionType.unableToRevokeAccess.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<void> updateItemAccessVfs({
    required String granteeDid,
    required List<String> itemIds,
    required Permissions permissions,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  }) async {
    await updateItemAccessVfsWithMultiplePermissions(
      granteeDid: granteeDid,
      permissionGroups: [(itemIds: itemIds, permissions: permissions)],
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      validateStatus: validateStatus,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Updates item access with multiple permission groups.
  ///
  /// This allows sending multiple Permission objects with different rights
  /// in one request, preserving separate permission groups.
  @override
  Future<void> updateItemAccessVfsWithMultiplePermissions({
    required String granteeDid,
    required List<({List<String> itemIds, Permissions permissions})>
        permissionGroups,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  }) async {
    if (_consumerAuthzApi == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Consumer IAM client is required for item-level access',
          code: TdkExceptionType.unableToUpdateAccess.code,
        ),
        StackTrace.current,
      );
    }

    try {
      final permissionBuilders = permissionGroups.map((group) {
        return consumer_iam.PermissionBuilder()
          ..rights = ListBuilder<consumer_iam.RightsEnum>(
              _permissionsToConsumerRights(group.permissions))
          ..nodeIds = ListBuilder<String>(group
              .itemIds);
      }).toList();

      final updateAccessInput = consumer_iam.UpdateAccessInputBuilder()
        ..permissions = ListBuilder<consumer_iam.Permission>(
            permissionBuilders.map((b) => b.build()).toList());

      await _consumerAuthzApi!.updateAccessVfs(
        granteeDid: granteeDid,
        updateAccessInput: updateAccessInput.build(),
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        validateStatus: validateStatus,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to update item access for $granteeDid',
          code: TdkExceptionType.unableToUpdateAccess.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<consumer_iam.GetAccessOutput>> getItemAccessVfs({
    required String granteeDid,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  }) async {
    if (_consumerAuthzApi == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Consumer IAM client is required for item-level access',
          code: TdkExceptionType.unableToGetAccess.code,
        ),
        StackTrace.current,
      );
    }

    try {
      return await _consumerAuthzApi!.getAccessVfs(
        granteeDid: granteeDid,
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        validateStatus: validateStatus,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to get item access for $granteeDid',
          code: TdkExceptionType.unableToGetAccess.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }
}
