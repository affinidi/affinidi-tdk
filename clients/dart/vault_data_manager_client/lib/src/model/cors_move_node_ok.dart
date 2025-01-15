//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_move_node_ok.g.dart';

/// CorsMoveNodeOK
///
/// Properties:
/// * [corsMoveNodeOk] 
@BuiltValue()
abstract class CorsMoveNodeOK implements Built<CorsMoveNodeOK, CorsMoveNodeOKBuilder> {
  @BuiltValueField(wireName: r'corsMoveNodeOk')
  String? get corsMoveNodeOk;

  CorsMoveNodeOK._();

  factory CorsMoveNodeOK([void updates(CorsMoveNodeOKBuilder b)]) = _$CorsMoveNodeOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsMoveNodeOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsMoveNodeOK> get serializer => _$CorsMoveNodeOKSerializer();
}

class _$CorsMoveNodeOKSerializer implements PrimitiveSerializer<CorsMoveNodeOK> {
  @override
  final Iterable<Type> types = const [CorsMoveNodeOK, _$CorsMoveNodeOK];

  @override
  final String wireName = r'CorsMoveNodeOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsMoveNodeOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsMoveNodeOk != null) {
      yield r'corsMoveNodeOk';
      yield serializers.serialize(
        object.corsMoveNodeOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsMoveNodeOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsMoveNodeOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsMoveNodeOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsMoveNodeOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsMoveNodeOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsMoveNodeOKBuilder();
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

