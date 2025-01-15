//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_get_config_ok.g.dart';

/// CorsGetConfigOK
///
/// Properties:
/// * [corsGetConfigOk] 
@BuiltValue()
abstract class CorsGetConfigOK implements Built<CorsGetConfigOK, CorsGetConfigOKBuilder> {
  @BuiltValueField(wireName: r'corsGetConfigOk')
  String? get corsGetConfigOk;

  CorsGetConfigOK._();

  factory CorsGetConfigOK([void updates(CorsGetConfigOKBuilder b)]) = _$CorsGetConfigOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsGetConfigOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsGetConfigOK> get serializer => _$CorsGetConfigOKSerializer();
}

class _$CorsGetConfigOKSerializer implements PrimitiveSerializer<CorsGetConfigOK> {
  @override
  final Iterable<Type> types = const [CorsGetConfigOK, _$CorsGetConfigOK];

  @override
  final String wireName = r'CorsGetConfigOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsGetConfigOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsGetConfigOk != null) {
      yield r'corsGetConfigOk';
      yield serializers.serialize(
        object.corsGetConfigOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsGetConfigOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsGetConfigOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsGetConfigOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsGetConfigOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsGetConfigOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsGetConfigOKBuilder();
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

