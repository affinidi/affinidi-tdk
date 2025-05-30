//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_credential_input.g.dart';

/// Request model of /verify-vcs
///
/// Properties:
/// * [verifiableCredentials] - List of VCs
/// * [issuerDidDocument] - Dynamic model
@BuiltValue()
abstract class VerifyCredentialInput implements Built<VerifyCredentialInput, VerifyCredentialInputBuilder> {
  /// List of VCs
  @BuiltValueField(wireName: r'verifiableCredentials')
  BuiltList<JsonObject> get verifiableCredentials;

  /// Dynamic model
  @BuiltValueField(wireName: r'issuerDidDocument')
  BuiltMap<String, JsonObject?>? get issuerDidDocument;

  VerifyCredentialInput._();

  factory VerifyCredentialInput([void updates(VerifyCredentialInputBuilder b)]) = _$VerifyCredentialInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyCredentialInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyCredentialInput> get serializer => _$VerifyCredentialInputSerializer();
}

class _$VerifyCredentialInputSerializer implements PrimitiveSerializer<VerifyCredentialInput> {
  @override
  final Iterable<Type> types = const [VerifyCredentialInput, _$VerifyCredentialInput];

  @override
  final String wireName = r'VerifyCredentialInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyCredentialInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'verifiableCredentials';
    yield serializers.serialize(
      object.verifiableCredentials,
      specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
    );
    if (object.issuerDidDocument != null) {
      yield r'issuerDidDocument';
      yield serializers.serialize(
        object.issuerDidDocument,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyCredentialInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyCredentialInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'verifiableCredentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.verifiableCredentials.replace(valueDes);
          break;
        case r'issuerDidDocument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
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
  VerifyCredentialInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyCredentialInputBuilder();
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

