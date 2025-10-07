//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/supported_credential_metadata_display_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'supported_credential_metadata.g.dart';

/// SupportedCredentialMetadata
///
/// Properties:
/// * [display]
@BuiltValue()
abstract class SupportedCredentialMetadata
    implements
        Built<SupportedCredentialMetadata, SupportedCredentialMetadataBuilder> {
  @BuiltValueField(wireName: r'display')
  BuiltList<SupportedCredentialMetadataDisplayInner>? get display;

  SupportedCredentialMetadata._();

  factory SupportedCredentialMetadata(
          [void updates(SupportedCredentialMetadataBuilder b)]) =
      _$SupportedCredentialMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SupportedCredentialMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SupportedCredentialMetadata> get serializer =>
      _$SupportedCredentialMetadataSerializer();
}

class _$SupportedCredentialMetadataSerializer
    implements PrimitiveSerializer<SupportedCredentialMetadata> {
  @override
  final Iterable<Type> types = const [
    SupportedCredentialMetadata,
    _$SupportedCredentialMetadata
  ];

  @override
  final String wireName = r'SupportedCredentialMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SupportedCredentialMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.display != null) {
      yield r'display';
      yield serializers.serialize(
        object.display,
        specifiedType: const FullType(
            BuiltList, [FullType(SupportedCredentialMetadataDisplayInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SupportedCredentialMetadata object, {
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
    required SupportedCredentialMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(SupportedCredentialMetadataDisplayInner)]),
          ) as BuiltList<SupportedCredentialMetadataDisplayInner>;
          result.display.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SupportedCredentialMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SupportedCredentialMetadataBuilder();
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
