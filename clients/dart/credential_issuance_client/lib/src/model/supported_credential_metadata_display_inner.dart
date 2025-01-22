//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/supported_credential_metadata_item_logo.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'supported_credential_metadata_display_inner.g.dart';

/// SupportedCredentialMetadataDisplayInner
///
/// Properties:
/// * [name] 
/// * [locale] 
/// * [logo] 
/// * [backgroundColor] 
/// * [textColor] 
@BuiltValue()
abstract class SupportedCredentialMetadataDisplayInner implements Built<SupportedCredentialMetadataDisplayInner, SupportedCredentialMetadataDisplayInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'logo')
  SupportedCredentialMetadataItemLogo? get logo;

  @BuiltValueField(wireName: r'backgroundColor')
  String? get backgroundColor;

  @BuiltValueField(wireName: r'textColor')
  String? get textColor;

  SupportedCredentialMetadataDisplayInner._();

  factory SupportedCredentialMetadataDisplayInner([void updates(SupportedCredentialMetadataDisplayInnerBuilder b)]) = _$SupportedCredentialMetadataDisplayInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SupportedCredentialMetadataDisplayInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SupportedCredentialMetadataDisplayInner> get serializer => _$SupportedCredentialMetadataDisplayInnerSerializer();
}

class _$SupportedCredentialMetadataDisplayInnerSerializer implements PrimitiveSerializer<SupportedCredentialMetadataDisplayInner> {
  @override
  final Iterable<Type> types = const [SupportedCredentialMetadataDisplayInner, _$SupportedCredentialMetadataDisplayInner];

  @override
  final String wireName = r'SupportedCredentialMetadataDisplayInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SupportedCredentialMetadataDisplayInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType(String),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType(SupportedCredentialMetadataItemLogo),
      );
    }
    if (object.backgroundColor != null) {
      yield r'backgroundColor';
      yield serializers.serialize(
        object.backgroundColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.textColor != null) {
      yield r'textColor';
      yield serializers.serialize(
        object.textColor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SupportedCredentialMetadataDisplayInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SupportedCredentialMetadataDisplayInnerBuilder result,
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
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SupportedCredentialMetadataItemLogo),
          ) as SupportedCredentialMetadataItemLogo;
          result.logo = valueDes;
          break;
        case r'backgroundColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.backgroundColor = valueDes;
          break;
        case r'textColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.textColor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SupportedCredentialMetadataDisplayInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SupportedCredentialMetadataDisplayInnerBuilder();
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

