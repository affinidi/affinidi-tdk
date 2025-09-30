//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_auth2_token_authorization_details_inner.g.dart';

/// OAuth2TokenAuthorizationDetailsInner
///
/// Properties:
/// * [type] - String that determines the authorization details type.
/// * [credentialConfigurationId]
/// * [credentialIdentifiers]
@BuiltValue()
abstract class OAuth2TokenAuthorizationDetailsInner
    implements
        Built<OAuth2TokenAuthorizationDetailsInner,
            OAuth2TokenAuthorizationDetailsInnerBuilder> {
  /// String that determines the authorization details type.
  @BuiltValueField(wireName: r'type')
  OAuth2TokenAuthorizationDetailsInnerTypeEnum get type;
  // enum typeEnum {  openid_credential,  };

  @BuiltValueField(wireName: r'credential_configuration_id')
  String get credentialConfigurationId;

  @BuiltValueField(wireName: r'credential_identifiers')
  BuiltList<String>? get credentialIdentifiers;

  OAuth2TokenAuthorizationDetailsInner._();

  factory OAuth2TokenAuthorizationDetailsInner(
          [void updates(OAuth2TokenAuthorizationDetailsInnerBuilder b)]) =
      _$OAuth2TokenAuthorizationDetailsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OAuth2TokenAuthorizationDetailsInnerBuilder b) => b
    ..type = const OAuth2TokenAuthorizationDetailsInnerTypeEnum._(
        'openid_credential');

  @BuiltValueSerializer(custom: true)
  static Serializer<OAuth2TokenAuthorizationDetailsInner> get serializer =>
      _$OAuth2TokenAuthorizationDetailsInnerSerializer();
}

class _$OAuth2TokenAuthorizationDetailsInnerSerializer
    implements PrimitiveSerializer<OAuth2TokenAuthorizationDetailsInner> {
  @override
  final Iterable<Type> types = const [
    OAuth2TokenAuthorizationDetailsInner,
    _$OAuth2TokenAuthorizationDetailsInner
  ];

  @override
  final String wireName = r'OAuth2TokenAuthorizationDetailsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OAuth2TokenAuthorizationDetailsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType:
          const FullType(OAuth2TokenAuthorizationDetailsInnerTypeEnum),
    );
    yield r'credential_configuration_id';
    yield serializers.serialize(
      object.credentialConfigurationId,
      specifiedType: const FullType(String),
    );
    if (object.credentialIdentifiers != null) {
      yield r'credential_identifiers';
      yield serializers.serialize(
        object.credentialIdentifiers,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OAuth2TokenAuthorizationDetailsInner object, {
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
    required OAuth2TokenAuthorizationDetailsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(OAuth2TokenAuthorizationDetailsInnerTypeEnum),
          ) as OAuth2TokenAuthorizationDetailsInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'credential_configuration_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialConfigurationId = valueDes;
          break;
        case r'credential_identifiers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.credentialIdentifiers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OAuth2TokenAuthorizationDetailsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OAuth2TokenAuthorizationDetailsInnerBuilder();
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

class OAuth2TokenAuthorizationDetailsInnerTypeEnum extends EnumClass {
  /// String that determines the authorization details type.
  @BuiltValueEnumConst(wireName: r'openid_credential')
  static const OAuth2TokenAuthorizationDetailsInnerTypeEnum openidCredential =
      _$oAuth2TokenAuthorizationDetailsInnerTypeEnum_openidCredential;

  static Serializer<OAuth2TokenAuthorizationDetailsInnerTypeEnum>
      get serializer =>
          _$oAuth2TokenAuthorizationDetailsInnerTypeEnumSerializer;

  const OAuth2TokenAuthorizationDetailsInnerTypeEnum._(String name)
      : super(name);

  static BuiltSet<OAuth2TokenAuthorizationDetailsInnerTypeEnum> get values =>
      _$oAuth2TokenAuthorizationDetailsInnerTypeEnumValues;
  static OAuth2TokenAuthorizationDetailsInnerTypeEnum valueOf(String name) =>
      _$oAuth2TokenAuthorizationDetailsInnerTypeEnumValueOf(name);
}
