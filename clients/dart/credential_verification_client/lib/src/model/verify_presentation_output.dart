//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_presentation_output.g.dart';

/// Response model of /verify-vp
///
/// Properties:
/// * [errors] - Error of the verification
/// * [isValid] - Verification result
@BuiltValue()
abstract class VerifyPresentationOutput implements Built<VerifyPresentationOutput, VerifyPresentationOutputBuilder> {
  /// Error of the verification
  @BuiltValueField(wireName: r'errors')
  BuiltList<String> get errors;

  /// Verification result
  @BuiltValueField(wireName: r'isValid')
  bool get isValid;

  VerifyPresentationOutput._();

  factory VerifyPresentationOutput([void updates(VerifyPresentationOutputBuilder b)]) = _$VerifyPresentationOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyPresentationOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyPresentationOutput> get serializer => _$VerifyPresentationOutputSerializer();
}

class _$VerifyPresentationOutputSerializer implements PrimitiveSerializer<VerifyPresentationOutput> {
  @override
  final Iterable<Type> types = const [VerifyPresentationOutput, _$VerifyPresentationOutput];

  @override
  final String wireName = r'VerifyPresentationOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyPresentationOutput object, {
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
    VerifyPresentationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyPresentationOutputBuilder result,
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
  VerifyPresentationOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyPresentationOutputBuilder();
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

