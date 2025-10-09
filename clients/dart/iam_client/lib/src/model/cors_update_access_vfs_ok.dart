//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_update_access_vfs_ok.g.dart';

/// CorsUpdateAccessVfsOK
///
/// Properties:
/// * [corsUpdateAccessVfsOk]
@BuiltValue()
abstract class CorsUpdateAccessVfsOK
    implements Built<CorsUpdateAccessVfsOK, CorsUpdateAccessVfsOKBuilder> {
  @BuiltValueField(wireName: r'corsUpdateAccessVfsOk')
  String? get corsUpdateAccessVfsOk;

  CorsUpdateAccessVfsOK._();

  factory CorsUpdateAccessVfsOK(
      [void updates(CorsUpdateAccessVfsOKBuilder b)]) = _$CorsUpdateAccessVfsOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsUpdateAccessVfsOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsUpdateAccessVfsOK> get serializer =>
      _$CorsUpdateAccessVfsOKSerializer();
}

class _$CorsUpdateAccessVfsOKSerializer
    implements PrimitiveSerializer<CorsUpdateAccessVfsOK> {
  @override
  final Iterable<Type> types = const [
    CorsUpdateAccessVfsOK,
    _$CorsUpdateAccessVfsOK
  ];

  @override
  final String wireName = r'CorsUpdateAccessVfsOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsUpdateAccessVfsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsUpdateAccessVfsOk != null) {
      yield r'corsUpdateAccessVfsOk';
      yield serializers.serialize(
        object.corsUpdateAccessVfsOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsUpdateAccessVfsOK object, {
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
    required CorsUpdateAccessVfsOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsUpdateAccessVfsOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsUpdateAccessVfsOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsUpdateAccessVfsOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsUpdateAccessVfsOKBuilder();
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
