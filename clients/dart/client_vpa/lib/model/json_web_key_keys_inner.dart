//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JsonWebKeyKeysInner {
  /// Returns a new [JsonWebKeyKeysInner] instance.
  JsonWebKeyKeysInner({
    required this.alg,
    this.crv,
    this.d,
    this.dp,
    this.dq,
    this.e,
    this.k,
    required this.kid,
    required this.kty,
    this.n,
    this.p,
    this.q,
    this.qi,
    required this.use,
    this.x,
    this.x5c = const [],
    this.y,
  });

  /// The \"alg\" (algorithm) parameter identifies the algorithm intended for use  with the key. The values used should either be registered in the IANA  \"JSON Web Signature and Encryption Algorithms\" registry established  by [JWA] or be a value that contains a Collision- Resistant Name. 
  String alg;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? crv;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? d;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dq;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? e;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? k;

  /// The \"kid\" (key ID) parameter is used to match a specific key. This is used,  for instance, to choose among a set of keys within a JWK Set during key  rollover. The structure of the \"kid\" value is unspecified. When \"kid\"  values are used within a JWK Set, different keys within the JWK Set SHOULD  use distinct \"kid\" values. (One example in which different keys might use  the same \"kid\" value is if they have different \"kty\" (key type) values but  are considered to be equivalent alternatives by the application using them.)  The \"kid\" value is a case-sensitive string. 
  String kid;

  /// The \"kty\" (key type) parameter identifies the cryptographic algorithm family  used with the key, such as \"RSA\" or \"EC\". \"kty\" values should either be  registered in the IANA \"JSON Web Key Types\" registry established by [JWA]  or be a value that contains a Collision- Resistant Name. The \"kty\" value  is a case-sensitive string. 
  String kty;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? p;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? q;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qi;

  /// Use (\"public key use\") identifies the intended use of the public key. The  \"use\" parameter is employed to indicate whether a public key is used for  encrypting data or verifying the signature on data. Values are commonly  \"sig\" (signature) or \"enc\" (encryption). 
  String use;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? x;

  /// The \"x5c\" (X.509 certificate chain) parameter contains a chain of one  or more PKIX certificates [RFC5280]. The certificate chain is represented  as a JSON array of certificate value strings. Each string in the array is  a base64-encoded (Section 4 of [RFC4648] -- not base64url-encoded) DER  [ITU.X690.1994] PKIX certificate value. The PKIX certificate containing the  key value MUST be the first certificate. 
  List<String> x5c;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? y;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JsonWebKeyKeysInner &&
    other.alg == alg &&
    other.crv == crv &&
    other.d == d &&
    other.dp == dp &&
    other.dq == dq &&
    other.e == e &&
    other.k == k &&
    other.kid == kid &&
    other.kty == kty &&
    other.n == n &&
    other.p == p &&
    other.q == q &&
    other.qi == qi &&
    other.use == use &&
    other.x == x &&
    _deepEquality.equals(other.x5c, x5c) &&
    other.y == y;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alg.hashCode) +
    (crv == null ? 0 : crv!.hashCode) +
    (d == null ? 0 : d!.hashCode) +
    (dp == null ? 0 : dp!.hashCode) +
    (dq == null ? 0 : dq!.hashCode) +
    (e == null ? 0 : e!.hashCode) +
    (k == null ? 0 : k!.hashCode) +
    (kid.hashCode) +
    (kty.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (p == null ? 0 : p!.hashCode) +
    (q == null ? 0 : q!.hashCode) +
    (qi == null ? 0 : qi!.hashCode) +
    (use.hashCode) +
    (x == null ? 0 : x!.hashCode) +
    (x5c.hashCode) +
    (y == null ? 0 : y!.hashCode);

  @override
  String toString() => 'JsonWebKeyKeysInner[alg=$alg, crv=$crv, d=$d, dp=$dp, dq=$dq, e=$e, k=$k, kid=$kid, kty=$kty, n=$n, p=$p, q=$q, qi=$qi, use=$use, x=$x, x5c=$x5c, y=$y]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'alg'] = this.alg;
    if (this.crv != null) {
      json[r'crv'] = this.crv;
    } else {
      json[r'crv'] = null;
    }
    if (this.d != null) {
      json[r'd'] = this.d;
    } else {
      json[r'd'] = null;
    }
    if (this.dp != null) {
      json[r'dp'] = this.dp;
    } else {
      json[r'dp'] = null;
    }
    if (this.dq != null) {
      json[r'dq'] = this.dq;
    } else {
      json[r'dq'] = null;
    }
    if (this.e != null) {
      json[r'e'] = this.e;
    } else {
      json[r'e'] = null;
    }
    if (this.k != null) {
      json[r'k'] = this.k;
    } else {
      json[r'k'] = null;
    }
      json[r'kid'] = this.kid;
      json[r'kty'] = this.kty;
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.p != null) {
      json[r'p'] = this.p;
    } else {
      json[r'p'] = null;
    }
    if (this.q != null) {
      json[r'q'] = this.q;
    } else {
      json[r'q'] = null;
    }
    if (this.qi != null) {
      json[r'qi'] = this.qi;
    } else {
      json[r'qi'] = null;
    }
      json[r'use'] = this.use;
    if (this.x != null) {
      json[r'x'] = this.x;
    } else {
      json[r'x'] = null;
    }
      json[r'x5c'] = this.x5c;
    if (this.y != null) {
      json[r'y'] = this.y;
    } else {
      json[r'y'] = null;
    }
    return json;
  }

  /// Returns a new [JsonWebKeyKeysInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JsonWebKeyKeysInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JsonWebKeyKeysInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JsonWebKeyKeysInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JsonWebKeyKeysInner(
        alg: mapValueOfType<String>(json, r'alg')!,
        crv: mapValueOfType<String>(json, r'crv'),
        d: mapValueOfType<String>(json, r'd'),
        dp: mapValueOfType<String>(json, r'dp'),
        dq: mapValueOfType<String>(json, r'dq'),
        e: mapValueOfType<String>(json, r'e'),
        k: mapValueOfType<String>(json, r'k'),
        kid: mapValueOfType<String>(json, r'kid')!,
        kty: mapValueOfType<String>(json, r'kty')!,
        n: mapValueOfType<String>(json, r'n'),
        p: mapValueOfType<String>(json, r'p'),
        q: mapValueOfType<String>(json, r'q'),
        qi: mapValueOfType<String>(json, r'qi'),
        use: mapValueOfType<String>(json, r'use')!,
        x: mapValueOfType<String>(json, r'x'),
        x5c: json[r'x5c'] is Iterable
            ? (json[r'x5c'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        y: mapValueOfType<String>(json, r'y'),
      );
    }
    return null;
  }

  static List<JsonWebKeyKeysInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JsonWebKeyKeysInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JsonWebKeyKeysInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JsonWebKeyKeysInner> mapFromJson(dynamic json) {
    final map = <String, JsonWebKeyKeysInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JsonWebKeyKeysInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JsonWebKeyKeysInner-objects as value to a dart map
  static Map<String, List<JsonWebKeyKeysInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JsonWebKeyKeysInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JsonWebKeyKeysInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'alg',
    'kid',
    'kty',
    'use',
    'x5c',
  };
}

