//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_credential_v2_input.g.dart';

/// Request model of /v2/verify-vcs
///
/// Properties:
/// * [verifiableCredentials] - List of VC strings
/// * [issuerDidDocument] - Dynamic model
@BuiltValue()
abstract class VerifyCredentialV2Input
    implements Built<VerifyCredentialV2Input, VerifyCredentialV2InputBuilder> {
  /// List of VC strings
  @BuiltValueField(wireName: r'verifiableCredentials')
  BuiltList<String> get verifiableCredentials;

  /// Dynamic model
  @BuiltValueField(wireName: r'issuerDidDocument')
  BuiltMap<String, JsonObject?>? get issuerDidDocument;

  VerifyCredentialV2Input._();

  factory VerifyCredentialV2Input(
          [void updates(VerifyCredentialV2InputBuilder b)]) =
      _$VerifyCredentialV2Input;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyCredentialV2InputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyCredentialV2Input> get serializer =>
      _$VerifyCredentialV2InputSerializer();
}

class _$VerifyCredentialV2InputSerializer
    implements PrimitiveSerializer<VerifyCredentialV2Input> {
  @override
  final Iterable<Type> types = const [
    VerifyCredentialV2Input,
    _$VerifyCredentialV2Input
  ];

  @override
  final String wireName = r'VerifyCredentialV2Input';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyCredentialV2Input object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'verifiableCredentials';
    yield serializers.serialize(
      object.verifiableCredentials,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.issuerDidDocument != null) {
      yield r'issuerDidDocument';
      yield serializers.serialize(
        object.issuerDidDocument,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyCredentialV2Input object, {
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
    required VerifyCredentialV2InputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'verifiableCredentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.verifiableCredentials.replace(valueDes);
          break;
        case r'issuerDidDocument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.issuerDidDocument.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyCredentialV2Input deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyCredentialV2InputBuilder();
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
