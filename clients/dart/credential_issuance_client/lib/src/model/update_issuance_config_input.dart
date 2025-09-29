//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_supported_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_issuance_config_input.g.dart';

/// UpdateIssuanceConfigInput
///
/// Properties:
/// * [name]
/// * [description]
/// * [issuerWalletId] - Issuer Wallet id
/// * [credentialOfferDuration] - credential offer duration in second
/// * [format] - String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
/// * [issuerUri] - Issuer URI
/// * [credentialSupported]
/// * [issuerMetadata] - Issuer public information wallet may want to show to user during consent confirmation
/// * [returnUris] - List of allowed URIs to be returned to after issuance
@BuiltValue()
abstract class UpdateIssuanceConfigInput
    implements
        Built<UpdateIssuanceConfigInput, UpdateIssuanceConfigInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Issuer Wallet id
  @BuiltValueField(wireName: r'issuerWalletId')
  String? get issuerWalletId;

  /// credential offer duration in second
  @BuiltValueField(wireName: r'credentialOfferDuration')
  int? get credentialOfferDuration;

  /// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueField(wireName: r'format')
  UpdateIssuanceConfigInputFormatEnum? get format;
  // enum formatEnum {  ldp_vc,  jwt_vc_json-ld,  sd_jwt_vc_json-ld,  };

  /// Issuer URI
  @BuiltValueField(wireName: r'issuerUri')
  String? get issuerUri;

  @BuiltValueField(wireName: r'credentialSupported')
  BuiltList<CredentialSupportedObject>? get credentialSupported;

  /// Issuer public information wallet may want to show to user during consent confirmation
  @BuiltValueField(wireName: r'issuerMetadata')
  BuiltMap<String, JsonObject?>? get issuerMetadata;

  /// List of allowed URIs to be returned to after issuance
  @BuiltValueField(wireName: r'returnUris')
  BuiltList<String>? get returnUris;

  UpdateIssuanceConfigInput._();

  factory UpdateIssuanceConfigInput(
          [void updates(UpdateIssuanceConfigInputBuilder b)]) =
      _$UpdateIssuanceConfigInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateIssuanceConfigInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateIssuanceConfigInput> get serializer =>
      _$UpdateIssuanceConfigInputSerializer();
}

class _$UpdateIssuanceConfigInputSerializer
    implements PrimitiveSerializer<UpdateIssuanceConfigInput> {
  @override
  final Iterable<Type> types = const [
    UpdateIssuanceConfigInput,
    _$UpdateIssuanceConfigInput
  ];

  @override
  final String wireName = r'UpdateIssuanceConfigInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateIssuanceConfigInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(UpdateIssuanceConfigInputFormatEnum),
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
        specifiedType:
            const FullType(BuiltList, [FullType(CredentialSupportedObject)]),
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
    if (object.returnUris != null) {
      yield r'returnUris';
      yield serializers.serialize(
        object.returnUris,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateIssuanceConfigInput object, {
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
    required UpdateIssuanceConfigInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateIssuanceConfigInputFormatEnum),
          ) as UpdateIssuanceConfigInputFormatEnum;
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
            specifiedType: const FullType(
                BuiltList, [FullType(CredentialSupportedObject)]),
          ) as BuiltList<CredentialSupportedObject>;
          result.credentialSupported.replace(valueDes);
          break;
        case r'issuerMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.issuerMetadata.replace(valueDes);
          break;
        case r'returnUris':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.returnUris.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateIssuanceConfigInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateIssuanceConfigInputBuilder();
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

class UpdateIssuanceConfigInputFormatEnum extends EnumClass {
  /// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'ldp_vc')
  static const UpdateIssuanceConfigInputFormatEnum ldpVc =
      _$updateIssuanceConfigInputFormatEnum_ldpVc;

  /// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'jwt_vc_json-ld')
  static const UpdateIssuanceConfigInputFormatEnum jwtVcJsonLd =
      _$updateIssuanceConfigInputFormatEnum_jwtVcJsonLd;

  /// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'sd_jwt_vc_json-ld')
  static const UpdateIssuanceConfigInputFormatEnum sdJwtVcJsonLd =
      _$updateIssuanceConfigInputFormatEnum_sdJwtVcJsonLd;

  static Serializer<UpdateIssuanceConfigInputFormatEnum> get serializer =>
      _$updateIssuanceConfigInputFormatEnumSerializer;

  const UpdateIssuanceConfigInputFormatEnum._(String name) : super(name);

  static BuiltSet<UpdateIssuanceConfigInputFormatEnum> get values =>
      _$updateIssuanceConfigInputFormatEnumValues;
  static UpdateIssuanceConfigInputFormatEnum valueOf(String name) =>
      _$updateIssuanceConfigInputFormatEnumValueOf(name);
}
