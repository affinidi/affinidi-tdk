import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/src/iam_api_service_interface.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class MockIamApiService extends Mock implements IamApiServiceInterface {
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
}
