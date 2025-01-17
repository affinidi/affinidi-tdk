//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_credential_output.g.dart';

/// Response model of /verify-vcs
///
/// Properties:
/// * [errors] - Errors of the VCs failed verification
/// * [isValid] - Verification result
@BuiltValue()
abstract class VerifyCredentialOutput implements Built<VerifyCredentialOutput, VerifyCredentialOutputBuilder> {
  /// Errors of the VCs failed verification
  @BuiltValueField(wireName: r'errors')
  BuiltList<String> get errors;

  /// Verification result
  @BuiltValueField(wireName: r'isValid')
  bool get isValid;

  VerifyCredentialOutput._();

  factory VerifyCredentialOutput([void updates(VerifyCredentialOutputBuilder b)]) = _$VerifyCredentialOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyCredentialOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyCredentialOutput> get serializer => _$VerifyCredentialOutputSerializer();
}

class _$VerifyCredentialOutputSerializer implements PrimitiveSerializer<VerifyCredentialOutput> {
  @override
  final Iterable<Type> types = const [VerifyCredentialOutput, _$VerifyCredentialOutput];

  @override
  final String wireName = r'VerifyCredentialOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyCredentialOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'isValid';
    yield serializers.serialize(
      object.isValid,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyCredentialOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyCredentialOutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.errors.replace(valueDes);
          break;
        case r'isValid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isValid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyCredentialOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyCredentialOutputBuilder();
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

