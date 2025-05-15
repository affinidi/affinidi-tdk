import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';

import 'exceptions/tdk_exception_type.dart';
import 'extensions/permissions_extensions.dart';
import 'iam_api_service_interface.dart';

/// A service for interacting with the IAM API.
class IamApiService implements IamApiServiceInterface {
  /// The IAM client to make API calls.
  final AffinidiTdkIamClient affinidiTdkIamClient;

  late AuthzApi _authzApi;

  /// Creates a new instance of [IamApiService].
  ///
  /// [affinidiTdkIamClient] - used to initialize the authorization API.
  IamApiService({required this.affinidiTdkIamClient}) {
    _authzApi = affinidiTdkIamClient.getAuthzApi();
  }

  @override
  Future<void> grantAccessVfs({
    required String granteeDid,
    required Permissions permissions,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final grantAccessInputBuilder = GrantAccessInputBuilder()
        ..granteeDid = granteeDid
        ..rights = ListBuilder(permissions.toRights());

      final grantAccessInput = grantAccessInputBuilder.build();

      final grantAccessVfsResponse =
          await _authzApi.grantAccessVfs(grantAccessInput: grantAccessInput);
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
      if (e.response == null) {
        rethrow;
      }
      final errorResponse = e.response!.data['error'] as Map<String, dynamic>?;
      final isAlreadyGranted = (e.response?.statusCode == 409) ||
          errorResponse!['type'] == 'AlreadyExistsError';

      if (isAlreadyGranted) {
        Error.throwWithStackTrace(
            TdkException(
              message: 'Failed to grant access to $granteeDid',
              code: TdkExceptionType.unableToGrantAccessAlreadyGranted.code,
              originalMessage: e.toString(),
            ),
            stackTrace);
      }
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
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      await _authzApi.deleteAccessVfs(granteeDid: granteeDid);
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
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final updateAccessInputBuilder = UpdateAccessInputBuilder()
        ..rights = ListBuilder(permissions.toRights());
      final updateAccessInput = updateAccessInputBuilder.build();
      final response = await _authzApi.updateAccessVfs(
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
}
