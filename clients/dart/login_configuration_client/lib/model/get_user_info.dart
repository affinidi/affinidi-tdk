//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetUserInfo {
  /// Returns a new [GetUserInfo] instance.
  GetUserInfo({
    this.birthdate,
    this.email,
    this.emailVerified,
    this.familyName,
    this.gender,
    this.givenName,
    this.locale,
    this.middleName,
    this.name,
    this.nickname,
    this.phoneNumber,
    this.phoneNumberVerified,
    this.picture,
    this.preferredUsername,
    this.profile,
    this.sub,
    this.updatedAt,
    this.website,
    this.zoneinfo,
  });

  /// End-User's birthday, represented as an ISO 8601:2004 [ISO8601‑2004] YYYY-MM-DD format.  The year MAY be 0000, indicating that it is omitted. To represent only the year,  YYYY format is allowed. Note that depending on the underlying platform's date related  function, providing just year can result in varying month and day, so the implementers  need to take this factor into account to correctly process the dates. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? birthdate;

  /// End-User's preferred e-mail address. Its value MUST conform to the RFC 5322 [RFC5322]  addr-spec syntax. The RP MUST NOT rely upon this value being unique, as discussed in Section 5.7. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// True if the End-User's e-mail address has been verified; otherwise false. When this  Claim Value is true, this means that the OP took affirmative steps to ensure that  this e-mail address was controlled by the End-User at the time the verification was  performed. The means by which an e-mail address is verified is context-specific, and  dependent upon the trust framework or contractual agreements within which the parties  are operating. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? emailVerified;

  /// Surname(s) or last name(s) of the End-User. Note that in some cultures, people can have  multiple family names or no family name; all can be present, with the names being  separated by space characters. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? familyName;

  /// End-User's gender. Values defined by this specification are female and male.  Other values MAY be used when neither of the defined values are applicable. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gender;

  /// Given name(s) or first name(s) of the End-User. Note that in some cultures,  people can have multiple given names; all can be present, with the names being  separated by space characters. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? givenName;

  /// End-User's locale, represented as a BCP47 [RFC5646] language tag. This is  typically an ISO 639-1 Alpha-2 [ISO639‑1] language code in lowercase and an  ISO 3166-1 Alpha-2 [ISO3166‑1] country code in uppercase, separated by a dash.  For example, en-US or fr-CA. As a compatibility note, some implementations have  used an underscore as the separator rather than a dash, for example, en_US;  Relying Parties MAY choose to accept this locale syntax as well. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locale;

  /// Middle name(s) of the End-User. Note that in some cultures, people can have  multiple middle names; all can be present, with the names being separated by  space characters. Also note that in some cultures, middle names are not used. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? middleName;

  /// End-User's full name in displayable form including all name parts, possibly  including titles and suffixes, ordered according to the End-User's locale and preferences. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Casual name of the End-User that may or may not be the same as the given_name.  For instance, a nickname value of Mike might be returned alongside a given_name value of Michael. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nickname;

  /// End-User's preferred telephone number. E.164 [E.164] is RECOMMENDED as the format of this Claim,  for example, +1 (425) 555-1212 or +56 (2) 687 2400. If the phone number contains an extension,  it is RECOMMENDED that the extension be represented using the RFC 3966 [RFC3966] extension syntax,  for example, +1 (604) 555-1234;ext=5678. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneNumber;

  /// True if the End-User's phone number has been verified; otherwise false. When this Claim  Value is true, this means that the OP took affirmative steps to ensure that this phone  number was controlled by the End-User at the time the verification was performed. The means  by which a phone number is verified is context-specific, and dependent upon the trust framework  or contractual agreements within which the parties are operating. When true, the phone_number  Claim MUST be in E.164 format and any extensions MUST be represented in RFC 3966 format. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? phoneNumberVerified;

  /// URL of the End-User's profile picture. This URL MUST refer to an image file (for example, a PNG,  JPEG, or GIF image file), rather than to a Web page containing an image. Note that this URL SHOULD specifically reference a profile photo of the End-User suitable for displaying when describing the  End-User, rather than an arbitrary photo taken by the End-User. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? picture;

  /// Non-unique shorthand name by which the End-User wishes to be referred to at the RP, such as  janedoe or j.doe. This value MAY be any valid JSON string including special characters  such as @, /, or whitespace. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferredUsername;

  /// URL of the End-User's profile page. The contents of this Web page SHOULD be about the End-User. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? profile;

  /// Subject - Identifier for the End-User at the IssuerURL. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sub;

  /// Time the End-User's information was last updated. Its value is a JSON number  representing the number of seconds from 1970-01-01T0:0:0Z as measured in UTC until the date/time. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// URL of the End-User's Web page or blog. This Web page SHOULD contain information  published by the End-User or an organization that the End-User is affiliated with. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? website;

  /// String from zoneinfo [zoneinfo] time zone database representing the End-User's  time zone. For example, Europe/Paris or America/Los_Angeles. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zoneinfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetUserInfo &&
    other.birthdate == birthdate &&
    other.email == email &&
    other.emailVerified == emailVerified &&
    other.familyName == familyName &&
    other.gender == gender &&
    other.givenName == givenName &&
    other.locale == locale &&
    other.middleName == middleName &&
    other.name == name &&
    other.nickname == nickname &&
    other.phoneNumber == phoneNumber &&
    other.phoneNumberVerified == phoneNumberVerified &&
    other.picture == picture &&
    other.preferredUsername == preferredUsername &&
    other.profile == profile &&
    other.sub == sub &&
    other.updatedAt == updatedAt &&
    other.website == website &&
    other.zoneinfo == zoneinfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (birthdate == null ? 0 : birthdate!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (emailVerified == null ? 0 : emailVerified!.hashCode) +
    (familyName == null ? 0 : familyName!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (givenName == null ? 0 : givenName!.hashCode) +
    (locale == null ? 0 : locale!.hashCode) +
    (middleName == null ? 0 : middleName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nickname == null ? 0 : nickname!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (phoneNumberVerified == null ? 0 : phoneNumberVerified!.hashCode) +
    (picture == null ? 0 : picture!.hashCode) +
    (preferredUsername == null ? 0 : preferredUsername!.hashCode) +
    (profile == null ? 0 : profile!.hashCode) +
    (sub == null ? 0 : sub!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (website == null ? 0 : website!.hashCode) +
    (zoneinfo == null ? 0 : zoneinfo!.hashCode);

  @override
  String toString() => 'GetUserInfo[birthdate=$birthdate, email=$email, emailVerified=$emailVerified, familyName=$familyName, gender=$gender, givenName=$givenName, locale=$locale, middleName=$middleName, name=$name, nickname=$nickname, phoneNumber=$phoneNumber, phoneNumberVerified=$phoneNumberVerified, picture=$picture, preferredUsername=$preferredUsername, profile=$profile, sub=$sub, updatedAt=$updatedAt, website=$website, zoneinfo=$zoneinfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.birthdate != null) {
      json[r'birthdate'] = this.birthdate;
    } else {
      json[r'birthdate'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.emailVerified != null) {
      json[r'email_verified'] = this.emailVerified;
    } else {
      json[r'email_verified'] = null;
    }
    if (this.familyName != null) {
      json[r'family_name'] = this.familyName;
    } else {
      json[r'family_name'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
    if (this.givenName != null) {
      json[r'given_name'] = this.givenName;
    } else {
      json[r'given_name'] = null;
    }
    if (this.locale != null) {
      json[r'locale'] = this.locale;
    } else {
      json[r'locale'] = null;
    }
    if (this.middleName != null) {
      json[r'middle_name'] = this.middleName;
    } else {
      json[r'middle_name'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.nickname != null) {
      json[r'nickname'] = this.nickname;
    } else {
      json[r'nickname'] = null;
    }
    if (this.phoneNumber != null) {
      json[r'phone_number'] = this.phoneNumber;
    } else {
      json[r'phone_number'] = null;
    }
    if (this.phoneNumberVerified != null) {
      json[r'phone_number_verified'] = this.phoneNumberVerified;
    } else {
      json[r'phone_number_verified'] = null;
    }
    if (this.picture != null) {
      json[r'picture'] = this.picture;
    } else {
      json[r'picture'] = null;
    }
    if (this.preferredUsername != null) {
      json[r'preferred_username'] = this.preferredUsername;
    } else {
      json[r'preferred_username'] = null;
    }
    if (this.profile != null) {
      json[r'profile'] = this.profile;
    } else {
      json[r'profile'] = null;
    }
    if (this.sub != null) {
      json[r'sub'] = this.sub;
    } else {
      json[r'sub'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    if (this.zoneinfo != null) {
      json[r'zoneinfo'] = this.zoneinfo;
    } else {
      json[r'zoneinfo'] = null;
    }
    return json;
  }

  /// Returns a new [GetUserInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetUserInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetUserInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetUserInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetUserInfo(
        birthdate: mapValueOfType<String>(json, r'birthdate'),
        email: mapValueOfType<String>(json, r'email'),
        emailVerified: mapValueOfType<bool>(json, r'email_verified'),
        familyName: mapValueOfType<String>(json, r'family_name'),
        gender: mapValueOfType<String>(json, r'gender'),
        givenName: mapValueOfType<String>(json, r'given_name'),
        locale: mapValueOfType<String>(json, r'locale'),
        middleName: mapValueOfType<String>(json, r'middle_name'),
        name: mapValueOfType<String>(json, r'name'),
        nickname: mapValueOfType<String>(json, r'nickname'),
        phoneNumber: mapValueOfType<String>(json, r'phone_number'),
        phoneNumberVerified: mapValueOfType<bool>(json, r'phone_number_verified'),
        picture: mapValueOfType<String>(json, r'picture'),
        preferredUsername: mapValueOfType<String>(json, r'preferred_username'),
        profile: mapValueOfType<String>(json, r'profile'),
        sub: mapValueOfType<String>(json, r'sub'),
        updatedAt: mapValueOfType<int>(json, r'updated_at'),
        website: mapValueOfType<String>(json, r'website'),
        zoneinfo: mapValueOfType<String>(json, r'zoneinfo'),
      );
    }
    return null;
  }

  static List<GetUserInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetUserInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetUserInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetUserInfo> mapFromJson(dynamic json) {
    final map = <String, GetUserInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetUserInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetUserInfo-objects as value to a dart map
  static Map<String, List<GetUserInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetUserInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetUserInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

