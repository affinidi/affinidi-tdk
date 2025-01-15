//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'supported_credential_metadata_display_inner_logo.g.dart';

/// SupportedCredentialMetadataDisplayInnerLogo
///
/// Properties:
/// * [url] 
/// * [altText] 
@BuiltValue()
abstract class SupportedCredentialMetadataDisplayInnerLogo implements Built<SupportedCredentialMetadataDisplayInnerLogo, SupportedCredentialMetadataDisplayInnerLogoBuilder> {
  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'altText')
  String? get altText;

  SupportedCredentialMetadataDisplayInnerLogo._();

  factory SupportedCredentialMetadataDisplayInnerLogo([void updates(SupportedCredentialMetadataDisplayInnerLogoBuilder b)]) = _$SupportedCredentialMetadataDisplayInnerLogo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SupportedCredentialMetadataDisplayInnerLogoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SupportedCredentialMetadataDisplayInnerLogo> get serializer => _$SupportedCredentialMetadataDisplayInnerLogoSerializer();
}

class _$SupportedCredentialMetadataDisplayInnerLogoSerializer implements PrimitiveSerializer<SupportedCredentialMetadataDisplayInnerLogo> {
  @override
  final Iterable<Type> types = const [SupportedCredentialMetadataDisplayInnerLogo, _$SupportedCredentialMetadataDisplayInnerLogo];

  @override
  final String wireName = r'SupportedCredentialMetadataDisplayInnerLogo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SupportedCredentialMetadataDisplayInnerLogo object, {
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
    SupportedCredentialMetadataDisplayInnerLogo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SupportedCredentialMetadataDisplayInnerLogoBuilder result,
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
  SupportedCredentialMetadataDisplayInnerLogo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SupportedCredentialMetadataDisplayInnerLogoBuilder();
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

