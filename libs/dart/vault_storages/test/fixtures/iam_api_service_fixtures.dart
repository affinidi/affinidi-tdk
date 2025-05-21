import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:dio/dio.dart';

class IamApiServiceFixtures {
  static const String testGranteeDid = 'did:test:123';
  static const Permissions testPermissions = Permissions.read;

  static Response<GrantAccessOutput> get successfulGrantAccessResponse =>
      Response(
        data: GrantAccessOutput((b) => b..success = true),
        statusCode: 200,
        requestOptions: RequestOptions(),
      );

  static Response<dynamic> get successfulRevokeAccessResponse => Response(
        data: null,
        statusCode: 200,
        requestOptions: RequestOptions(),
      );
}
