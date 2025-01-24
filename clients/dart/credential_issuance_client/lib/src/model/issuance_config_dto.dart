//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/cis_configuration_webhook_setting.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_supported_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issuance_config_dto.g.dart';

/// IssuanceConfigDto
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [description] 
/// * [issuerDid] - Issuer DID
/// * [issuerWalletId] - Issuer Wallet id
/// * [credentialOfferDuration] - credential offer duration in second
/// * [cNonceDuration] - c_nonce duration in second
/// * [format] - String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
/// * [issuerUri] - Issuer URI
/// * [credentialSupported] 
/// * [issuerMetadata] - Issuer public information wallet may want to show to user during consent confirmation
/// * [version] 
/// * [returnUris] - List of allowed URIs to be returned to after issuance
/// * [webhook] 
@BuiltValue()
abstract class IssuanceConfigDto implements Built<IssuanceConfigDto, IssuanceConfigDtoBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Issuer DID
  @BuiltValueField(wireName: r'issuerDid')
  String? get issuerDid;

  /// Issuer Wallet id
  @BuiltValueField(wireName: r'issuerWalletId')
  String? get issuerWalletId;

  /// credential offer duration in second
  @BuiltValueField(wireName: r'credentialOfferDuration')
  int? get credentialOfferDuration;

  /// c_nonce duration in second
  @BuiltValueField(wireName: r'cNonceDuration')
  int? get cNonceDuration;

  /// String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueField(wireName: r'format')
  IssuanceConfigDtoFormatEnum? get format;
  // enum formatEnum {  ldp_vc,  jwt_vc_json-ld,  sd_jwt_vc_json-ld,  };

  /// Issuer URI
  @BuiltValueField(wireName: r'issuerUri')
  String? get issuerUri;

  @BuiltValueField(wireName: r'credentialSupported')
  BuiltList<CredentialSupportedObject>? get credentialSupported;

  /// Issuer public information wallet may want to show to user during consent confirmation
  @BuiltValueField(wireName: r'issuerMetadata')
  BuiltMap<String, JsonObject?>? get issuerMetadata;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// List of allowed URIs to be returned to after issuance
  @BuiltValueField(wireName: r'returnUris')
  BuiltList<String>? get returnUris;

  @BuiltValueField(wireName: r'webhook')
  CisConfigurationWebhookSetting? get webhook;

  IssuanceConfigDto._();

  factory IssuanceConfigDto([void updates(IssuanceConfigDtoBuilder b)]) = _$IssuanceConfigDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IssuanceConfigDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IssuanceConfigDto> get serializer => _$IssuanceConfigDtoSerializer();
}

class _$IssuanceConfigDtoSerializer implements PrimitiveSerializer<IssuanceConfigDto> {
  @override
  final Iterable<Type> types = const [IssuanceConfigDto, _$IssuanceConfigDto];

  @override
  final String wireName = r'IssuanceConfigDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IssuanceConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.issuerDid != null) {
      yield r'issuerDid';
      yield serializers.serialize(
        object.issuerDid,
        specifiedType: const FullType(String),
      );
    }
    if (object.issuerWalletId != null) {
      yield r'issuerWalletId';
      yield serializers.serialize(
        object.issuerWalletId,
        specifiedType: const FullType(String),
      );
    }
    if (object.credentialOfferDuration != null) {
      yield r'credentialOfferDuration';
      yield serializers.serialize(
        object.credentialOfferDuration,
        specifiedType: const FullType(int),
      );
    }
    if (object.cNonceDuration != null) {
      yield r'cNonceDuration';
      yield serializers.serialize(
        object.cNonceDuration,
        specifiedType: const FullType(int),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(IssuanceConfigDtoFormatEnum),
      );
    }
    if (object.issuerUri != null) {
      yield r'issuerUri';
      yield serializers.serialize(
        object.issuerUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.credentialSupported != null) {
      yield r'credentialSupported';
      yield serializers.serialize(
        object.credentialSupported,
        specifiedType: const FullType(BuiltList, [FullType(CredentialSupportedObject)]),
      );
    }
    if (object.issuerMetadata != null) {
      yield r'issuerMetadata';
      yield serializers.serialize(
        object.issuerMetadata,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.returnUris != null) {
      yield r'returnUris';
      yield serializers.serialize(
        object.returnUris,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.webhook != null) {
      yield r'webhook';
      yield serializers.serialize(
        object.webhook,
        specifiedType: const FullType(CisConfigurationWebhookSetting),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IssuanceConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IssuanceConfigDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'issuerDid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuerDid = valueDes;
          break;
        case r'issuerWalletId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuerWalletId = valueDes;
          break;
        case r'credentialOfferDuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.credentialOfferDuration = valueDes;
          break;
        case r'cNonceDuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cNonceDuration = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IssuanceConfigDtoFormatEnum),
          ) as IssuanceConfigDtoFormatEnum;
          result.format = valueDes;
          break;
        case r'issuerUri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuerUri = valueDes;
          break;
        case r'credentialSupported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CredentialSupportedObject)]),
          ) as BuiltList<CredentialSupportedObject>;
          result.credentialSupported.replace(valueDes);
          break;
        case r'issuerMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.issuerMetadata.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'returnUris':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.returnUris.replace(valueDes);
          break;
        case r'webhook':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CisConfigurationWebhookSetting),
          ) as CisConfigurationWebhookSetting;
          result.webhook.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IssuanceConfigDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IssuanceConfigDtoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class IssuanceConfigDtoFormatEnum extends EnumClass {

  /// String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'ldp_vc')
  static const IssuanceConfigDtoFormatEnum ldpVc = _$issuanceConfigDtoFormatEnum_ldpVc;
  /// String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'jwt_vc_json-ld')
  static const IssuanceConfigDtoFormatEnum jwtVcJsonLd = _$issuanceConfigDtoFormatEnum_jwtVcJsonLd;
  /// String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'sd_jwt_vc_json-ld')
  static const IssuanceConfigDtoFormatEnum sdJwtVcJsonLd = _$issuanceConfigDtoFormatEnum_sdJwtVcJsonLd;

  static Serializer<IssuanceConfigDtoFormatEnum> get serializer => _$issuanceConfigDtoFormatEnumSerializer;

  const IssuanceConfigDtoFormatEnum._(String name): super(name);

  static BuiltSet<IssuanceConfigDtoFormatEnum> get values => _$issuanceConfigDtoFormatEnumValues;
  static IssuanceConfigDtoFormatEnum valueOf(String name) => _$issuanceConfigDtoFormatEnumValueOf(name);
}

