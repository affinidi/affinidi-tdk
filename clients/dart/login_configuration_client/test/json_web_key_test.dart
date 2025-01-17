import 'package:test/test.dart';
import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';

// tests for JsonWebKey
void main() {
  final instance = JsonWebKeyBuilder();
  // TODO add properties to the builder and call build()

  group(JsonWebKey, () {
    // The value of the \"keys\" parameter is an array of JSON Web Key (JWK) values.  By default, the order of the JWK values within the array does not imply an  order of preference among them, although applications of JWK Sets can choose  to assign a meaning to the order for their purposes, if desired. 
    // BuiltList<JsonWebKeyKeysInner> keys
    test('to test the property `keys`', () async {
      // TODO
    });

  });
}
