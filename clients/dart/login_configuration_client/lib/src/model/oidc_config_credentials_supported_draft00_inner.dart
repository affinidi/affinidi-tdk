//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'oidc_config_credentials_supported_draft00_inner.g.dart';

/// OIDCConfigCredentialsSupportedDraft00Inner
///
/// Properties:
/// * [cryptographicBindingMethodsSupported]
/// * [cryptographicSuitesSupported]
/// * [format]
/// * [types]
@BuiltValue()
abstract class OIDCConfigCredentialsSupportedDraft00Inner
    implements
        Built<OIDCConfigCredentialsSupportedDraft00Inner,
            OIDCConfigCredentialsSupportedDraft00InnerBuilder> {
  @BuiltValueField(wireName: r'cryptographic_binding_methods_supported')
  BuiltList<String>? get cryptographicBindingMethodsSupported;

  @BuiltValueField(wireName: r'cryptographic_suites_supported')
  BuiltList<String>? get cryptographicSuitesSupported;

  @BuiltValueField(wireName: r'format')
  String? get format;

  @BuiltValueField(wireName: r'types')
  BuiltList<String>? get types;

  OIDCConfigCredentialsSupportedDraft00Inner._();

  factory OIDCConfigCredentialsSupportedDraft00Inner(
          [void updates(OIDCConfigCredentialsSupportedDraft00InnerBuilder b)]) =
      _$OIDCConfigCredentialsSupportedDraft00Inner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OIDCConfigCredentialsSupportedDraft00InnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OIDCConfigCredentialsSupportedDraft00Inner>
      get serializer =>
          _$OIDCConfigCredentialsSupportedDraft00InnerSerializer();
}

class _$OIDCConfigCredentialsSupportedDraft00InnerSerializer
    implements PrimitiveSerializer<OIDCConfigCredentialsSupportedDraft00Inner> {
  @override
  final Iterable<Type> types = const [
    OIDCConfigCredentialsSupportedDraft00Inner,
    _$OIDCConfigCredentialsSupportedDraft00Inner
  ];

  @override
  final String wireName = r'OIDCConfigCredentialsSupportedDraft00Inner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OIDCConfigCredentialsSupportedDraft00Inner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cryptographicBindingMethodsSupported != null) {
      yield r'cryptographic_binding_methods_supported';
      yield serializers.serialize(
        object.cryptographicBindingMethodsSupported,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.cryptographicSuitesSupported != null) {
      yield r'cryptographic_suites_supported';
      yield serializers.serialize(
        object.cryptographicSuitesSupported,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(String),
      );
    }
    if (object.types != null) {
      yield r'types';
      yield serializers.serialize(
        object.types,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OIDCConfigCredentialsSupportedDraft00Inner object, {
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
    required OIDCConfigCredentialsSupportedDraft00InnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cryptographic_binding_methods_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.cryptographicBindingMethodsSupported.replace(valueDes);
          break;
        case r'cryptographic_suites_supported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.cryptographicSuitesSupported.replace(valueDes);
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.types.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OIDCConfigCredentialsSupportedDraft00Inner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OIDCConfigCredentialsSupportedDraft00InnerBuilder();
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
