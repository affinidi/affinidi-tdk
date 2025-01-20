//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'evaluate_vp_output.g.dart';

/// EvaluateVpOutput
///
/// Properties:
/// * [result] 
/// * [errors] 
@BuiltValue()
abstract class EvaluateVpOutput implements Built<EvaluateVpOutput, EvaluateVpOutputBuilder> {
  @BuiltValueField(wireName: r'result')
  bool get result;

  @BuiltValueField(wireName: r'errors')
  BuiltList<String> get errors;

  EvaluateVpOutput._();

  factory EvaluateVpOutput([void updates(EvaluateVpOutputBuilder b)]) = _$EvaluateVpOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EvaluateVpOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EvaluateVpOutput> get serializer => _$EvaluateVpOutputSerializer();
}

class _$EvaluateVpOutputSerializer implements PrimitiveSerializer<EvaluateVpOutput> {
  @override
  final Iterable<Type> types = const [EvaluateVpOutput, _$EvaluateVpOutput];

  @override
  final String wireName = r'EvaluateVpOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EvaluateVpOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(bool),
    );
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EvaluateVpOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EvaluateVpOutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.result = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EvaluateVpOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvaluateVpOutputBuilder();
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

