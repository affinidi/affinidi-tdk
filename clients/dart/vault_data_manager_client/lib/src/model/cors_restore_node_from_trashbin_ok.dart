//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_restore_node_from_trashbin_ok.g.dart';

/// CorsRestoreNodeFromTrashbinOK
///
/// Properties:
/// * [corsRestoreNodeFromTrashbinOk] 
@BuiltValue()
abstract class CorsRestoreNodeFromTrashbinOK implements Built<CorsRestoreNodeFromTrashbinOK, CorsRestoreNodeFromTrashbinOKBuilder> {
  @BuiltValueField(wireName: r'corsRestoreNodeFromTrashbinOk')
  String? get corsRestoreNodeFromTrashbinOk;

  CorsRestoreNodeFromTrashbinOK._();

  factory CorsRestoreNodeFromTrashbinOK([void updates(CorsRestoreNodeFromTrashbinOKBuilder b)]) = _$CorsRestoreNodeFromTrashbinOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsRestoreNodeFromTrashbinOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsRestoreNodeFromTrashbinOK> get serializer => _$CorsRestoreNodeFromTrashbinOKSerializer();
}

class _$CorsRestoreNodeFromTrashbinOKSerializer implements PrimitiveSerializer<CorsRestoreNodeFromTrashbinOK> {
  @override
  final Iterable<Type> types = const [CorsRestoreNodeFromTrashbinOK, _$CorsRestoreNodeFromTrashbinOK];

  @override
  final String wireName = r'CorsRestoreNodeFromTrashbinOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsRestoreNodeFromTrashbinOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsRestoreNodeFromTrashbinOk != null) {
      yield r'corsRestoreNodeFromTrashbinOk';
      yield serializers.serialize(
        object.corsRestoreNodeFromTrashbinOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsRestoreNodeFromTrashbinOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsRestoreNodeFromTrashbinOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsRestoreNodeFromTrashbinOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsRestoreNodeFromTrashbinOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsRestoreNodeFromTrashbinOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsRestoreNodeFromTrashbinOKBuilder();
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

