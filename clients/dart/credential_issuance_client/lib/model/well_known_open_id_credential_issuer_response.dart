//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WellKnownOpenIdCredentialIssuerResponse {
  /// Returns a new [WellKnownOpenIdCredentialIssuerResponse] instance.
  WellKnownOpenIdCredentialIssuerResponse({
    this.authorizationEndpoint,
    this.credentialEndpoint,
    this.credentialIssuer,
    this.credentialsSupported = const [],
    this.deferredCredentialEndpoint,
    this.grantTypesSupported = const [],
    this.jwksUri,
    this.scopesSupported = const [],
    this.tokenEndpoint,
    this.tokenEndpointAuthMethodsSupported = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorizationEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? credentialEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? credentialIssuer;

  List<IssuanceConfigDtoCredentialSupportedInner> credentialsSupported;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deferredCredentialEndpoint;

  List<WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum> grantTypesSupported;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jwksUri;

  List<WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum> scopesSupported;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenEndpoint;

  List<WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum> tokenEndpointAuthMethodsSupported;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WellKnownOpenIdCredentialIssuerResponse &&
    other.authorizationEndpoint == authorizationEndpoint &&
    other.credentialEndpoint == credentialEndpoint &&
    other.credentialIssuer == credentialIssuer &&
    _deepEquality.equals(other.credentialsSupported, credentialsSupported) &&
    other.deferredCredentialEndpoint == deferredCredentialEndpoint &&
    _deepEquality.equals(other.grantTypesSupported, grantTypesSupported) &&
    other.jwksUri == jwksUri &&
    _deepEquality.equals(other.scopesSupported, scopesSupported) &&
    other.tokenEndpoint == tokenEndpoint &&
    _deepEquality.equals(other.tokenEndpointAuthMethodsSupported, tokenEndpointAuthMethodsSupported);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authorizationEndpoint == null ? 0 : authorizationEndpoint!.hashCode) +
    (credentialEndpoint == null ? 0 : credentialEndpoint!.hashCode) +
    (credentialIssuer == null ? 0 : credentialIssuer!.hashCode) +
    (credentialsSupported.hashCode) +
    (deferredCredentialEndpoint == null ? 0 : deferredCredentialEndpoint!.hashCode) +
    (grantTypesSupported.hashCode) +
    (jwksUri == null ? 0 : jwksUri!.hashCode) +
    (scopesSupported.hashCode) +
    (tokenEndpoint == null ? 0 : tokenEndpoint!.hashCode) +
    (tokenEndpointAuthMethodsSupported.hashCode);

  @override
  String toString() => 'WellKnownOpenIdCredentialIssuerResponse[authorizationEndpoint=$authorizationEndpoint, credentialEndpoint=$credentialEndpoint, credentialIssuer=$credentialIssuer, credentialsSupported=$credentialsSupported, deferredCredentialEndpoint=$deferredCredentialEndpoint, grantTypesSupported=$grantTypesSupported, jwksUri=$jwksUri, scopesSupported=$scopesSupported, tokenEndpoint=$tokenEndpoint, tokenEndpointAuthMethodsSupported=$tokenEndpointAuthMethodsSupported]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authorizationEndpoint != null) {
      json[r'authorization_endpoint'] = this.authorizationEndpoint;
    } else {
      json[r'authorization_endpoint'] = null;
    }
    if (this.credentialEndpoint != null) {
      json[r'credential_endpoint'] = this.credentialEndpoint;
    } else {
      json[r'credential_endpoint'] = null;
    }
    if (this.credentialIssuer != null) {
      json[r'credential_issuer'] = this.credentialIssuer;
    } else {
      json[r'credential_issuer'] = null;
    }
      json[r'credentials_supported'] = this.credentialsSupported;
    if (this.deferredCredentialEndpoint != null) {
      json[r'deferred_credential_endpoint'] = this.deferredCredentialEndpoint;
    } else {
      json[r'deferred_credential_endpoint'] = null;
    }
      json[r'grant_types_supported'] = this.grantTypesSupported;
    if (this.jwksUri != null) {
      json[r'jwks_uri'] = this.jwksUri;
    } else {
      json[r'jwks_uri'] = null;
    }
      json[r'scopes_supported'] = this.scopesSupported;
    if (this.tokenEndpoint != null) {
      json[r'token_endpoint'] = this.tokenEndpoint;
    } else {
      json[r'token_endpoint'] = null;
    }
      json[r'token_endpoint_auth_methods_supported'] = this.tokenEndpointAuthMethodsSupported;
    return json;
  }

  /// Returns a new [WellKnownOpenIdCredentialIssuerResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WellKnownOpenIdCredentialIssuerResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WellKnownOpenIdCredentialIssuerResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WellKnownOpenIdCredentialIssuerResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WellKnownOpenIdCredentialIssuerResponse(
        authorizationEndpoint: mapValueOfType<String>(json, r'authorization_endpoint'),
        credentialEndpoint: mapValueOfType<String>(json, r'credential_endpoint'),
        credentialIssuer: mapValueOfType<String>(json, r'credential_issuer'),
        credentialsSupported: IssuanceConfigDtoCredentialSupportedInner.listFromJson(json[r'credentials_supported']),
        deferredCredentialEndpoint: mapValueOfType<String>(json, r'deferred_credential_endpoint'),
        grantTypesSupported: WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum.listFromJson(json[r'grant_types_supported']),
        jwksUri: mapValueOfType<String>(json, r'jwks_uri'),
        scopesSupported: WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum.listFromJson(json[r'scopes_supported']),
        tokenEndpoint: mapValueOfType<String>(json, r'token_endpoint'),
        tokenEndpointAuthMethodsSupported: WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum.listFromJson(json[r'token_endpoint_auth_methods_supported']),
      );
    }
    return null;
  }

  static List<WellKnownOpenIdCredentialIssuerResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WellKnownOpenIdCredentialIssuerResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WellKnownOpenIdCredentialIssuerResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WellKnownOpenIdCredentialIssuerResponse> mapFromJson(dynamic json) {
    final map = <String, WellKnownOpenIdCredentialIssuerResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WellKnownOpenIdCredentialIssuerResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WellKnownOpenIdCredentialIssuerResponse-objects as value to a dart map
  static Map<String, List<WellKnownOpenIdCredentialIssuerResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WellKnownOpenIdCredentialIssuerResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WellKnownOpenIdCredentialIssuerResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum {
  /// Instantiate a new enum with the provided [value].
  const WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const authorizationCode = WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum._(r'authorization_code');
  static const urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode = WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum._(r'urn:ietf:params:oauth:grant-type:pre-authorized_code');

  /// List of all possible values in this [enum][WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum].
  static const values = <WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum>[
    authorizationCode,
    urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode,
  ];

  static WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum? fromJson(dynamic value) => WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnumTypeTransformer().decode(value);

  static List<WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum] to String,
/// and [decode] dynamic data back to [WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum].
class WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnumTypeTransformer {
  factory WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnumTypeTransformer() => _instance ??= const WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnumTypeTransformer._();

  const WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnumTypeTransformer._();

  String encode(WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'authorization_code': return WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum.authorizationCode;
        case r'urn:ietf:params:oauth:grant-type:pre-authorized_code': return WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum.urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnumTypeTransformer] instance.
  static WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnumTypeTransformer? _instance;
}



class WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum {
  /// Instantiate a new enum with the provided [value].
  const WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const openid = WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum._(r'openid');

  /// List of all possible values in this [enum][WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum].
  static const values = <WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum>[
    openid,
  ];

  static WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum? fromJson(dynamic value) => WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnumTypeTransformer().decode(value);

  static List<WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum] to String,
/// and [decode] dynamic data back to [WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum].
class WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnumTypeTransformer {
  factory WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnumTypeTransformer() => _instance ??= const WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnumTypeTransformer._();

  const WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnumTypeTransformer._();

  String encode(WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'openid': return WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum.openid;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnumTypeTransformer] instance.
  static WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnumTypeTransformer? _instance;
}



class WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum {
  /// Instantiate a new enum with the provided [value].
  const WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const clientSecretPost = WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum._(r'client_secret_post');
  static const clientSecretBasic = WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum._(r'client_secret_basic');
  static const none = WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum._(r'none');

  /// List of all possible values in this [enum][WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum].
  static const values = <WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum>[
    clientSecretPost,
    clientSecretBasic,
    none,
  ];

  static WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum? fromJson(dynamic value) => WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnumTypeTransformer().decode(value);

  static List<WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum] to String,
/// and [decode] dynamic data back to [WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum].
class WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnumTypeTransformer {
  factory WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnumTypeTransformer() => _instance ??= const WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnumTypeTransformer._();

  const WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnumTypeTransformer._();

  String encode(WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'client_secret_post': return WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum.clientSecretPost;
        case r'client_secret_basic': return WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum.clientSecretBasic;
        case r'none': return WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnumTypeTransformer] instance.
  static WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnumTypeTransformer? _instance;
}


