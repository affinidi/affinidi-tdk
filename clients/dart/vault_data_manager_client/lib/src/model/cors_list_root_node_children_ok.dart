//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_list_root_node_children_ok.g.dart';

/// CorsListRootNodeChildrenOK
///
/// Properties:
/// * [corsListRootNodeChildrenOk]
@BuiltValue()
abstract class CorsListRootNodeChildrenOK
    implements
        Built<CorsListRootNodeChildrenOK, CorsListRootNodeChildrenOKBuilder> {
  @BuiltValueField(wireName: r'corsListRootNodeChildrenOk')
  String? get corsListRootNodeChildrenOk;

  CorsListRootNodeChildrenOK._();

  factory CorsListRootNodeChildrenOK(
          [void updates(CorsListRootNodeChildrenOKBuilder b)]) =
      _$CorsListRootNodeChildrenOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsListRootNodeChildrenOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsListRootNodeChildrenOK> get serializer =>
      _$CorsListRootNodeChildrenOKSerializer();
}

class _$CorsListRootNodeChildrenOKSerializer
    implements PrimitiveSerializer<CorsListRootNodeChildrenOK> {
  @override
  final Iterable<Type> types = const [
    CorsListRootNodeChildrenOK,
    _$CorsListRootNodeChildrenOK
  ];

  @override
  final String wireName = r'CorsListRootNodeChildrenOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsListRootNodeChildrenOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsListRootNodeChildrenOk != null) {
      yield r'corsListRootNodeChildrenOk';
      yield serializers.serialize(
        object.corsListRootNodeChildrenOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsListRootNodeChildrenOK object, {
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
    required CorsListRootNodeChildrenOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsListRootNodeChildrenOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsListRootNodeChildrenOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsListRootNodeChildrenOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsListRootNodeChildrenOKBuilder();
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
