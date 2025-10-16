//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_init_nodes_ok.g.dart';

/// CorsInitNodesOK
///
/// Properties:
/// * [corsInitNodesOk]
@BuiltValue()
abstract class CorsInitNodesOK
    implements Built<CorsInitNodesOK, CorsInitNodesOKBuilder> {
  @BuiltValueField(wireName: r'corsInitNodesOk')
  String? get corsInitNodesOk;

  CorsInitNodesOK._();

  factory CorsInitNodesOK([void updates(CorsInitNodesOKBuilder b)]) =
      _$CorsInitNodesOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsInitNodesOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsInitNodesOK> get serializer =>
      _$CorsInitNodesOKSerializer();
}

class _$CorsInitNodesOKSerializer
    implements PrimitiveSerializer<CorsInitNodesOK> {
  @override
  final Iterable<Type> types = const [CorsInitNodesOK, _$CorsInitNodesOK];

  @override
  final String wireName = r'CorsInitNodesOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsInitNodesOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsInitNodesOk != null) {
      yield r'corsInitNodesOk';
      yield serializers.serialize(
        object.corsInitNodesOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsInitNodesOK object, {
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
    required CorsInitNodesOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsInitNodesOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsInitNodesOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsInitNodesOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsInitNodesOKBuilder();
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
