//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_delete_node_ok.g.dart';

/// CorsDeleteNodeOK
///
/// Properties:
/// * [corsDeleteNodeOk]
@BuiltValue()
abstract class CorsDeleteNodeOK
    implements Built<CorsDeleteNodeOK, CorsDeleteNodeOKBuilder> {
  @BuiltValueField(wireName: r'corsDeleteNodeOk')
  String? get corsDeleteNodeOk;

  CorsDeleteNodeOK._();

  factory CorsDeleteNodeOK([void updates(CorsDeleteNodeOKBuilder b)]) =
      _$CorsDeleteNodeOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsDeleteNodeOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsDeleteNodeOK> get serializer =>
      _$CorsDeleteNodeOKSerializer();
}

class _$CorsDeleteNodeOKSerializer
    implements PrimitiveSerializer<CorsDeleteNodeOK> {
  @override
  final Iterable<Type> types = const [CorsDeleteNodeOK, _$CorsDeleteNodeOK];

  @override
  final String wireName = r'CorsDeleteNodeOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsDeleteNodeOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsDeleteNodeOk != null) {
      yield r'corsDeleteNodeOk';
      yield serializers.serialize(
        object.corsDeleteNodeOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsDeleteNodeOK object, {
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
    required CorsDeleteNodeOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsDeleteNodeOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsDeleteNodeOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsDeleteNodeOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsDeleteNodeOKBuilder();
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
