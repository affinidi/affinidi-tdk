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

part 'create_issuance_config_input.g.dart';

/// CreateIssuanceConfigInput
///
/// Properties:
/// * [name]
/// * [description]
/// * [issuerWalletId] - Issuer Wallet id
/// * [credentialOfferDuration] - credential offer duration in second
/// * [format] - String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
/// * [credentialSupported]
/// * [issuerMetadata] - Issuer public information wallet may want to show to user during consent confirmation
/// * [returnUris] - List of allowed URIs to be returned to after issuance
/// * [webhook]
@BuiltValue()
abstract class CreateIssuanceConfigInput
    implements
        Built<CreateIssuanceConfigInput, CreateIssuanceConfigInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Issuer Wallet id
  @BuiltValueField(wireName: r'issuerWalletId')
  String get issuerWalletId;

  /// credential offer duration in second
  @BuiltValueField(wireName: r'credentialOfferDuration')
  int? get credentialOfferDuration;

  /// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueField(wireName: r'format')
  CreateIssuanceConfigInputFormatEnum? get format;
  // enum formatEnum {  ldp_vc,  jwt_vc_json-ld,  sd_jwt_vc_json-ld,  };

  @BuiltValueField(wireName: r'credentialSupported')
  BuiltList<CredentialSupportedObject> get credentialSupported;

  /// Issuer public information wallet may want to show to user during consent confirmation
  @BuiltValueField(wireName: r'issuerMetadata')
  BuiltMap<String, JsonObject?>? get issuerMetadata;

  /// List of allowed URIs to be returned to after issuance
  @BuiltValueField(wireName: r'returnUris')
  BuiltList<String>? get returnUris;

  @BuiltValueField(wireName: r'webhook')
  CisConfigurationWebhookSetting? get webhook;

  CreateIssuanceConfigInput._();

  factory CreateIssuanceConfigInput(
          [void updates(CreateIssuanceConfigInputBuilder b)]) =
      _$CreateIssuanceConfigInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateIssuanceConfigInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateIssuanceConfigInput> get serializer =>
      _$CreateIssuanceConfigInputSerializer();
}

class _$CreateIssuanceConfigInputSerializer
    implements PrimitiveSerializer<CreateIssuanceConfigInput> {
  @override
  final Iterable<Type> types = const [
    CreateIssuanceConfigInput,
    _$CreateIssuanceConfigInput
  ];

  @override
  final String wireName = r'CreateIssuanceConfigInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateIssuanceConfigInput object, {
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
    yield r'issuerWalletId';
    yield serializers.serialize(
      object.issuerWalletId,
      specifiedType: const FullType(String),
    );
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
        specifiedType: const FullType(CreateIssuanceConfigInputFormatEnum),
      );
    }
    yield r'credentialSupported';
    yield serializers.serialize(
      object.credentialSupported,
      specifiedType:
          const FullType(BuiltList, [FullType(CredentialSupportedObject)]),
    );
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
    CreateIssuanceConfigInput object, {
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
    required CreateIssuanceConfigInputBuilder result,
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
            specifiedType: const FullType(CreateIssuanceConfigInputFormatEnum),
          ) as CreateIssuanceConfigInputFormatEnum;
          result.format = valueDes;
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
  CreateIssuanceConfigInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIssuanceConfigInputBuilder();
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

class CreateIssuanceConfigInputFormatEnum extends EnumClass {
  /// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'ldp_vc')
  static const CreateIssuanceConfigInputFormatEnum ldpVc =
      _$createIssuanceConfigInputFormatEnum_ldpVc;

  /// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'jwt_vc_json-ld')
  static const CreateIssuanceConfigInputFormatEnum jwtVcJsonLd =
      _$createIssuanceConfigInputFormatEnum_jwtVcJsonLd;

  /// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
  @BuiltValueEnumConst(wireName: r'sd_jwt_vc_json-ld')
  static const CreateIssuanceConfigInputFormatEnum sdJwtVcJsonLd =
      _$createIssuanceConfigInputFormatEnum_sdJwtVcJsonLd;

  static Serializer<CreateIssuanceConfigInputFormatEnum> get serializer =>
      _$createIssuanceConfigInputFormatEnumSerializer;

  const CreateIssuanceConfigInputFormatEnum._(String name) : super(name);

  static BuiltSet<CreateIssuanceConfigInputFormatEnum> get values =>
      _$createIssuanceConfigInputFormatEnumValues;
  static CreateIssuanceConfigInputFormatEnum valueOf(String name) =>
      _$createIssuanceConfigInputFormatEnumValueOf(name);
}
