//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_endpoint_auth_method.g.dart';

class TokenEndpointAuthMethod extends EnumClass {
  /// Requested Client Authentication method for the Token Endpoint. The options are: `client_secret_post`: (default) Send client_id and client_secret as application/x-www-form-urlencoded in the HTTP body. `client_secret_basic`: Send client_id and client_secret as application/x-www-form-urlencoded encoded in the HTTP Authorization header. `none`: For public clients (native/mobile apps) which can not have secret.
  @BuiltValueEnumConst(wireName: r'client_secret_basic')
  static const TokenEndpointAuthMethod clientSecretBasic = _$clientSecretBasic;

  /// Requested Client Authentication method for the Token Endpoint. The options are: `client_secret_post`: (default) Send client_id and client_secret as application/x-www-form-urlencoded in the HTTP body. `client_secret_basic`: Send client_id and client_secret as application/x-www-form-urlencoded encoded in the HTTP Authorization header. `none`: For public clients (native/mobile apps) which can not have secret.
  @BuiltValueEnumConst(wireName: r'client_secret_post')
  static const TokenEndpointAuthMethod clientSecretPost = _$clientSecretPost;

  /// Requested Client Authentication method for the Token Endpoint. The options are: `client_secret_post`: (default) Send client_id and client_secret as application/x-www-form-urlencoded in the HTTP body. `client_secret_basic`: Send client_id and client_secret as application/x-www-form-urlencoded encoded in the HTTP Authorization header. `none`: For public clients (native/mobile apps) which can not have secret.
  @BuiltValueEnumConst(wireName: r'none')
  static const TokenEndpointAuthMethod none = _$none;

  static Serializer<TokenEndpointAuthMethod> get serializer =>
      _$tokenEndpointAuthMethodSerializer;

  const TokenEndpointAuthMethod._(String name) : super(name);

  static BuiltSet<TokenEndpointAuthMethod> get values => _$values;
  static TokenEndpointAuthMethod valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TokenEndpointAuthMethodMixin = Object
    with _$TokenEndpointAuthMethodMixin;
