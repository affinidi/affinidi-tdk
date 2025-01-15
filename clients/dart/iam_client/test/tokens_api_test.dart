import 'package:test/test.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';


/// tests for TokensApi
void main() {
  final instance = AffinidiTdkIamClient().getTokensApi();

  group(TokensApi, () {
    //Future<TokenDto> createToken(CreateTokenInput createTokenInput) async
    test('test createToken', () async {
      // TODO
    });

    //Future deleteToken(String tokenId) async
    test('test deleteToken', () async {
      // TODO
    });

    //Future<TokenDto> getToken(String tokenId) async
    test('test getToken', () async {
      // TODO
    });

    //Future<ProjectWithPolicyList> listProjectsOfToken(String tokenId, { int limit, String exclusiveStartKey }) async
    test('test listProjectsOfToken', () async {
      // TODO
    });

    //Future<TokenList> listToken({ int limit, String exclusiveStartKey }) async
    test('test listToken', () async {
      // TODO
    });

    //Future<TokenDto> updateToken(String tokenId, UpdateTokenInput updateTokenInput) async
    test('test updateToken', () async {
      // TODO
    });

  });
}
