//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Requested Client Authentication method for the Token Endpoint. The options are: `client_secret_post`: (default) Send client_id and client_secret as application/x-www-form-urlencoded in the HTTP body. `client_secret_basic`: Send client_id and client_secret as application/x-www-form-urlencoded encoded in the HTTP Authorization header. `none`: For public clients (native/mobile apps) which can not have secret. 
class TokenEndpointAuthMethod {
  /// Instantiate a new enum with the provided [value].
  const TokenEndpointAuthMethod._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const clientSecretBasic = TokenEndpointAuthMethod._(r'client_secret_basic');
  static const clientSecretPost = TokenEndpointAuthMethod._(r'client_secret_post');
  static const none = TokenEndpointAuthMethod._(r'none');

  /// List of all possible values in this [enum][TokenEndpointAuthMethod].
  static const values = <TokenEndpointAuthMethod>[
    clientSecretBasic,
    clientSecretPost,
    none,
  ];

  static TokenEndpointAuthMethod? fromJson(dynamic value) => TokenEndpointAuthMethodTypeTransformer().decode(value);

  static List<TokenEndpointAuthMethod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenEndpointAuthMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenEndpointAuthMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TokenEndpointAuthMethod] to String,
/// and [decode] dynamic data back to [TokenEndpointAuthMethod].
class TokenEndpointAuthMethodTypeTransformer {
  factory TokenEndpointAuthMethodTypeTransformer() => _instance ??= const TokenEndpointAuthMethodTypeTransformer._();

  const TokenEndpointAuthMethodTypeTransformer._();

  String encode(TokenEndpointAuthMethod data) => data.value;

  /// Decodes a [dynamic value][data] to a TokenEndpointAuthMethod.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TokenEndpointAuthMethod? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'client_secret_basic': return TokenEndpointAuthMethod.clientSecretBasic;
        case r'client_secret_post': return TokenEndpointAuthMethod.clientSecretPost;
        case r'none': return TokenEndpointAuthMethod.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TokenEndpointAuthMethodTypeTransformer] instance.
  static TokenEndpointAuthMethodTypeTransformer? _instance;
}

