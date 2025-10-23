//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_list_node_children_ok.g.dart';

/// CorsListNodeChildrenOK
///
/// Properties:
/// * [corsListNodeChildrenOk]
@BuiltValue()
abstract class CorsListNodeChildrenOK
    implements Built<CorsListNodeChildrenOK, CorsListNodeChildrenOKBuilder> {
  @BuiltValueField(wireName: r'corsListNodeChildrenOk')
  String? get corsListNodeChildrenOk;

  CorsListNodeChildrenOK._();

  factory CorsListNodeChildrenOK(
          [void updates(CorsListNodeChildrenOKBuilder b)]) =
      _$CorsListNodeChildrenOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsListNodeChildrenOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsListNodeChildrenOK> get serializer =>
      _$CorsListNodeChildrenOKSerializer();
}

class _$CorsListNodeChildrenOKSerializer
    implements PrimitiveSerializer<CorsListNodeChildrenOK> {
  @override
  final Iterable<Type> types = const [
    CorsListNodeChildrenOK,
    _$CorsListNodeChildrenOK
  ];

  @override
  final String wireName = r'CorsListNodeChildrenOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsListNodeChildrenOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsListNodeChildrenOk != null) {
      yield r'corsListNodeChildrenOk';
      yield serializers.serialize(
        object.corsListNodeChildrenOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsListNodeChildrenOK object, {
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
    required CorsListNodeChildrenOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsListNodeChildrenOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsListNodeChildrenOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsListNodeChildrenOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsListNodeChildrenOKBuilder();
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
