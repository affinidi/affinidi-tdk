//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issuance_config_mini_dto.g.dart';

/// IssuanceConfigMiniDto
///
/// Properties:
/// * [id]
/// * [name]
/// * [issuerDid] - Issuer DID
/// * [issuerWalletId] - Issuer Wallet id
/// * [credentialOfferDuration] - credential offer duration in second
/// * [cNonceDuration] - c_nonce duration in second
/// * [format] - String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
/// * [issuerUri] - Issuer URI
/// * [issuerMetadata] - Issuer public information wallet may want to show to user during consent confirmation
/// * [version]
@BuiltValue()
abstract class IssuanceConfigMiniDto
    implements Built<IssuanceConfigMiniDto, IssuanceConfigMiniDtoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

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
  IssuanceConfigMiniDtoFormatEnum? get format;
  // enum formatEnum {  ldp_vc,  jwt_vc_json-ld,  sd_jwt_vc_json-ld,  };

  /// Issuer URI
  @BuiltValueField(wireName: r'issuerUri')
  String? get issuerUri;

  /// Issuer public information wallet may want to show to user during consent confirmation
  @BuiltValueField(wireName: r'issuerMetadata')
  BuiltMap<String, JsonObject?>? get issuerMetadata;

  @BuiltValueField(wireName: r'version')
  int? get version;

  IssuanceConfigMiniDto._();

  factory IssuanceConfigMiniDto(
      [void updates(IssuanceConfigMiniDtoBuilder b)]) = _$IssuanceConfigMiniDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IssuanceConfigMiniDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IssuanceConfigMiniDto> get serializer =>
      _$IssuanceConfigMiniDtoSerializer();
}

class _$IssuanceConfigMiniDtoSerializer
    implements PrimitiveSerializer<IssuanceConfigMiniDto> {
  @override
  final Iterable<Type> types = const [
    IssuanceConfigMiniDto,
    _$IssuanceConfigMiniDto
  ];

  @override
  final String wireName = r'IssuanceConfigMiniDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IssuanceConfigMiniDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
        specifiedType: const FullType(IssuanceConfigMiniDtoFormatEnum),
      );
    }
    if (object.issuerUri != null) {
      yield r'issuerUri';
      yield serializers.serialize(
        object.issuerUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.issuerMetadata != null) {
      yield r'issuerMetadata';
      yield serializers.serialize(
        object.issuerMetadata,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IssuanceConfigMiniDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IssuanceConfigMiniDtoBuilder result,
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
            specifiedType: const FullType(IssuanceConfigMiniDtoFormatEnum),
          ) as IssuanceConfigMiniDtoFormatEnum;
          result.format = valueDes;
          break;
        case r'issuerUri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuerUri = valueDes;
          break;
        case r'issuerMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IssuanceConfigMiniDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IssuanceConfigMiniDtoBuilder();
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

class IssuanceConfigMiniDtoFormatEnum extends EnumClass {
  /// String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'ldp_vc')
  static const IssuanceConfigMiniDtoFormatEnum ldpVc =
      _$issuanceConfigMiniDtoFormatEnum_ldpVc;

  /// String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'jwt_vc_json-ld')
  static const IssuanceConfigMiniDtoFormatEnum jwtVcJsonLd =
      _$issuanceConfigMiniDtoFormatEnum_jwtVcJsonLd;

  /// String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'sd_jwt_vc_json-ld')
  static const IssuanceConfigMiniDtoFormatEnum sdJwtVcJsonLd =
      _$issuanceConfigMiniDtoFormatEnum_sdJwtVcJsonLd;

  static Serializer<IssuanceConfigMiniDtoFormatEnum> get serializer =>
      _$issuanceConfigMiniDtoFormatEnumSerializer;

  const IssuanceConfigMiniDtoFormatEnum._(String name) : super(name);

  static BuiltSet<IssuanceConfigMiniDtoFormatEnum> get values =>
      _$issuanceConfigMiniDtoFormatEnumValues;
  static IssuanceConfigMiniDtoFormatEnum valueOf(String name) =>
      _$issuanceConfigMiniDtoFormatEnumValueOf(name);
}
