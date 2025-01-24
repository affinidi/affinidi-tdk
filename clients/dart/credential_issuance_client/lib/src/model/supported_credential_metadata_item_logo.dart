//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'supported_credential_metadata_item_logo.g.dart';

/// SupportedCredentialMetadataItemLogo
///
/// Properties:
/// * [url] 
/// * [altText] 
@BuiltValue()
abstract class SupportedCredentialMetadataItemLogo implements Built<SupportedCredentialMetadataItemLogo, SupportedCredentialMetadataItemLogoBuilder> {
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'altText')
  String? get altText;

  SupportedCredentialMetadataItemLogo._();

  factory SupportedCredentialMetadataItemLogo([void updates(SupportedCredentialMetadataItemLogoBuilder b)]) = _$SupportedCredentialMetadataItemLogo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SupportedCredentialMetadataItemLogoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SupportedCredentialMetadataItemLogo> get serializer => _$SupportedCredentialMetadataItemLogoSerializer();
}

class _$SupportedCredentialMetadataItemLogoSerializer implements PrimitiveSerializer<SupportedCredentialMetadataItemLogo> {
  @override
  final Iterable<Type> types = const [SupportedCredentialMetadataItemLogo, _$SupportedCredentialMetadataItemLogo];

  @override
  final String wireName = r'SupportedCredentialMetadataItemLogo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SupportedCredentialMetadataItemLogo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.altText != null) {
      yield r'altText';
      yield serializers.serialize(
        object.altText,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SupportedCredentialMetadataItemLogo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SupportedCredentialMetadataItemLogoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'altText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.altText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SupportedCredentialMetadataItemLogo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SupportedCredentialMetadataItemLogoBuilder();
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

