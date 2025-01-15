//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_permanently_delete_node_ok.g.dart';

/// CorsPermanentlyDeleteNodeOK
///
/// Properties:
/// * [corsPermanentlyDeleteNodeOk] 
@BuiltValue()
abstract class CorsPermanentlyDeleteNodeOK implements Built<CorsPermanentlyDeleteNodeOK, CorsPermanentlyDeleteNodeOKBuilder> {
  @BuiltValueField(wireName: r'corsPermanentlyDeleteNodeOk')
  String? get corsPermanentlyDeleteNodeOk;

  CorsPermanentlyDeleteNodeOK._();

  factory CorsPermanentlyDeleteNodeOK([void updates(CorsPermanentlyDeleteNodeOKBuilder b)]) = _$CorsPermanentlyDeleteNodeOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsPermanentlyDeleteNodeOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsPermanentlyDeleteNodeOK> get serializer => _$CorsPermanentlyDeleteNodeOKSerializer();
}

class _$CorsPermanentlyDeleteNodeOKSerializer implements PrimitiveSerializer<CorsPermanentlyDeleteNodeOK> {
  @override
  final Iterable<Type> types = const [CorsPermanentlyDeleteNodeOK, _$CorsPermanentlyDeleteNodeOK];

  @override
  final String wireName = r'CorsPermanentlyDeleteNodeOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsPermanentlyDeleteNodeOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsPermanentlyDeleteNodeOk != null) {
      yield r'corsPermanentlyDeleteNodeOk';
      yield serializers.serialize(
        object.corsPermanentlyDeleteNodeOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsPermanentlyDeleteNodeOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsPermanentlyDeleteNodeOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsPermanentlyDeleteNodeOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsPermanentlyDeleteNodeOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsPermanentlyDeleteNodeOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsPermanentlyDeleteNodeOKBuilder();
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

