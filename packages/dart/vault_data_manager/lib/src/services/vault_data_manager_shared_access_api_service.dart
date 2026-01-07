// ignore_for_file: avoid_print

import 'package:affinidi_tdk_consumer_iam_client/affinidi_tdk_consumer_iam_client.dart'
    as consumer_iam;
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';

import '../exceptions/tdk_exception_type.dart';
import 'vault_data_manager_shared_access_api_service_interface.dart';

/// A service to grant or revoke shared access to vault cloud storages.
class VaultDataManagerSharedAccessApiService
    implements VaultDataManagerSharedAccessApiServiceInterface {
  /// The Consumer IAM client to make granular access API calls for profile-level and node-level access.
  final consumer_iam.AffinidiTdkConsumerIamClient? affinidiTdkConsumerIamClient;

  consumer_iam.AuthzApi? _consumerAuthzApi;

  /// Converts [Permissions] to Consumer IAM rights list.
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
  /// [affinidiTdkConsumerIamClient] - Consumer IAM client for profile-level and node-level access methods.
  VaultDataManagerSharedAccessApiService({
    this.affinidiTdkConsumerIamClient,
  }) {
    _consumerAuthzApi = affinidiTdkConsumerIamClient?.getAuthzApi();
  }

  /// Deprecated: use [setItemsAccessVfs] (item-level access) or the vault
  /// `grantItemAccessMultiple`-based flows instead.
  @Deprecated('Use setItemsAccessVfs / grantItemAccessMultiple instead')
  @override
  Future<void> grantAccessVfs({
    required String granteeDid,
    required Permissions permissions,
    DateTime? expiresAt,
    String? profileId,
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
          message: 'Consumer IAM client is required for profile-level access',
          code: TdkExceptionType.unableToGrantAccess.code,
        ),
        StackTrace.current,
      );
    }

    try {
      DateTime? formattedExpiresAt;
      if (expiresAt != null) {
        final dt = expiresAt.toUtc();

        /// Format the date by creating a new DateTime with microsecond set to 0
        /// The backend API rejects dates that contain microseconds/nanoseconds.
        /// This ensures the date is serialized in a format accepted by the backend.
        formattedExpiresAt = DateTime.utc(dt.year, dt.month, dt.day, dt.hour,
            dt.minute, dt.second, dt.millisecond, 0);
      }

      // Use profileId as nodeId if provided (since profile is a node), otherwise use empty list
      final nodeIds = profileId != null ? [profileId] : <String>[];

      final permissionBuilder = consumer_iam.PermissionBuilder()
        ..rights = ListBuilder<consumer_iam.RightsEnum>(
            _permissionsToConsumerRights(permissions))
        ..nodeIds = ListBuilder<String>(nodeIds)
        ..expiresAt = formattedExpiresAt;

      final updateAccessInput = consumer_iam.UpdateAccessInputBuilder()
        ..permissions =
            ListBuilder<consumer_iam.Permission>([permissionBuilder.build()]);

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
    if (_consumerAuthzApi == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Consumer IAM client is required for profile-level access',
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
            message: 'Failed to revoke access from $granteeDid',
            code: TdkExceptionType.unableToRevokeAccess.code,
            originalMessage: e.toString(),
          ),
          stackTrace);
    }
  }

  @override
  Future<Response<consumer_iam.UpdateAccessOutput>> updateAccessVfs({
    required String granteeDid,
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
          message: 'Consumer IAM client is required for profile-level access',
          code: TdkExceptionType.unableToUpdateAccess.code,
        ),
        StackTrace.current,
      );
    }

    try {
      final permissionBuilder = consumer_iam.PermissionBuilder()
        ..rights = ListBuilder<consumer_iam.RightsEnum>(
            _permissionsToConsumerRights(permissions))
        ..nodeIds = ListBuilder<String>([]);

      final updateAccessInput = consumer_iam.UpdateAccessInputBuilder()
        ..permissions =
            ListBuilder<consumer_iam.Permission>([permissionBuilder.build()]);

      final response = await _consumerAuthzApi!.updateAccessVfs(
        granteeDid: granteeDid,
        updateAccessInput: updateAccessInput.build(),
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        validateStatus: validateStatus,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
          TdkException(
            message: 'Failed to update access for $granteeDid',
            code: TdkExceptionType.unableToUpdateAccess.code,
            originalMessage: e.toString(),
          ),
          stackTrace);
    }
  }

  @override
  Future<void> revokeItemsAccessVfs({
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

  /// Sets the complete item access policy for a grantee.
  @override
  Future<void> setItemsAccessVfs({
    required String granteeDid,
    required List<
            ({
              List<String> itemIds,
              Permissions permissions,
              DateTime? expiresAt
            })>
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
        DateTime? formattedExpiresAt;
        if (group.expiresAt != null) {
          final dt = group.expiresAt!.toUtc();

          /// Format the date by creating a new DateTime with microsecond set to 0
          /// The backend API rejects dates that contain microseconds/nanoseconds.
          /// This ensures the date is serialized in a format accepted by the backend.
          formattedExpiresAt = DateTime.utc(dt.year, dt.month, dt.day, dt.hour,
              dt.minute, dt.second, dt.millisecond, 0);
        }
        return consumer_iam.PermissionBuilder()
          ..rights = ListBuilder<consumer_iam.RightsEnum>(
              _permissionsToConsumerRights(group.permissions))
          ..nodeIds = ListBuilder<String>(group.itemIds)
          ..expiresAt = formattedExpiresAt;
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
  Future<Response<consumer_iam.GetAccessOutput>> getItemsAccessVfs({
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
