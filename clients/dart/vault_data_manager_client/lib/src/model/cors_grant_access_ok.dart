//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_grant_access_ok.g.dart';

/// CorsGrantAccessOK
///
/// Properties:
/// * [corsGrantAccessOk] 
@BuiltValue()
abstract class CorsGrantAccessOK implements Built<CorsGrantAccessOK, CorsGrantAccessOKBuilder> {
  @BuiltValueField(wireName: r'corsGrantAccessOk')
  String? get corsGrantAccessOk;

  CorsGrantAccessOK._();

  factory CorsGrantAccessOK([void updates(CorsGrantAccessOKBuilder b)]) = _$CorsGrantAccessOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsGrantAccessOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsGrantAccessOK> get serializer => _$CorsGrantAccessOKSerializer();
}

class _$CorsGrantAccessOKSerializer implements PrimitiveSerializer<CorsGrantAccessOK> {
  @override
  final Iterable<Type> types = const [CorsGrantAccessOK, _$CorsGrantAccessOK];

  @override
  final String wireName = r'CorsGrantAccessOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsGrantAccessOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsGrantAccessOk != null) {
      yield r'corsGrantAccessOk';
      yield serializers.serialize(
        object.corsGrantAccessOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsGrantAccessOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsGrantAccessOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsGrantAccessOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsGrantAccessOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsGrantAccessOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsGrantAccessOKBuilder();
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

