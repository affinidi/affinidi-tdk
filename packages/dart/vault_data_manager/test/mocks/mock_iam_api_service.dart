import 'package:affinidi_tdk_consumer_iam_client/affinidi_tdk_consumer_iam_client.dart'
    as consumer_iam;
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/src/services/vault_data_manager_shared_access_api_service_interface.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class MockIamApiService extends Mock
    implements VaultDataManagerSharedAccessApiServiceInterface {
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
  }) {
    return super.noSuchMethod(
      Invocation.method(#grantAccessVfs, [], {
        #granteeDid: granteeDid,
        #permissions: permissions,
        #cancelToken: cancelToken,
        #headers: headers,
        #extra: extra,
        #validateStatus: validateStatus,
        #onSendProgress: onSendProgress,
        #onReceiveProgress: onReceiveProgress,
      }),
    ) as Future<void>;
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
  }) {
    return super.noSuchMethod(
      Invocation.method(#revokeAccessVfs, [], {
        #granteeDid: granteeDid,
        #cancelToken: cancelToken,
        #headers: headers,
        #extra: extra,
        #validateStatus: validateStatus,
        #onSendProgress: onSendProgress,
        #onReceiveProgress: onReceiveProgress,
      }),
    ) as Future<void>;
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
  }) {
    return super.noSuchMethod(
      Invocation.method(#updateAccessVfs, [], {
        #granteeDid: granteeDid,
        #permissions: permissions,
        #cancelToken: cancelToken,
        #headers: headers,
        #extra: extra,
        #validateStatus: validateStatus,
        #onSendProgress: onSendProgress,
        #onReceiveProgress: onReceiveProgress,
      }),
    ) as Future<Response<UpdateAccessOutput>>;
  }

  @override
  Future<void> revokeItemAccessVfs({
    required String granteeDid,
    required List<String> itemIds,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return super.noSuchMethod(
      Invocation.method(#revokeItemAccessVfs, [], {
        #granteeDid: granteeDid,
        #itemIds: itemIds,
        #cancelToken: cancelToken,
        #headers: headers,
        #extra: extra,
        #validateStatus: validateStatus,
        #onSendProgress: onSendProgress,
        #onReceiveProgress: onReceiveProgress,
      }),
    ) as Future<void>;
  }

  @override
  Future<Response<consumer_iam.GetAccessOutput>> getItemAccessVfs({
    required String granteeDid,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return super.noSuchMethod(
      Invocation.method(#getItemAccessVfs, [], {
        #granteeDid: granteeDid,
        #cancelToken: cancelToken,
        #headers: headers,
        #extra: extra,
        #validateStatus: validateStatus,
        #onSendProgress: onSendProgress,
        #onReceiveProgress: onReceiveProgress,
      }),
    ) as Future<Response<consumer_iam.GetAccessOutput>>;
  }

  @override
  Future<void> setItemAccessVfs({
    required String granteeDid,
    required List<({List<String> itemIds, Permissions permissions})>
        permissionGroups,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return super.noSuchMethod(
      Invocation.method(#setItemAccessVfs, [], {
        #granteeDid: granteeDid,
        #permissionGroups: permissionGroups,
        #cancelToken: cancelToken,
        #headers: headers,
        #extra: extra,
        #validateStatus: validateStatus,
        #onSendProgress: onSendProgress,
        #onReceiveProgress: onReceiveProgress,
      }),
    ) as Future<void>;
  }
}
