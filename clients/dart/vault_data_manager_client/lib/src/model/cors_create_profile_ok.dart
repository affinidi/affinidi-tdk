//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_create_profile_ok.g.dart';

/// CorsCreateProfileOK
///
/// Properties:
/// * [corsCreateProfileOk] 
@BuiltValue()
abstract class CorsCreateProfileOK implements Built<CorsCreateProfileOK, CorsCreateProfileOKBuilder> {
  @BuiltValueField(wireName: r'corsCreateProfileOk')
  String? get corsCreateProfileOk;

  CorsCreateProfileOK._();

  factory CorsCreateProfileOK([void updates(CorsCreateProfileOKBuilder b)]) = _$CorsCreateProfileOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsCreateProfileOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsCreateProfileOK> get serializer => _$CorsCreateProfileOKSerializer();
}

class _$CorsCreateProfileOKSerializer implements PrimitiveSerializer<CorsCreateProfileOK> {
  @override
  final Iterable<Type> types = const [CorsCreateProfileOK, _$CorsCreateProfileOK];

  @override
  final String wireName = r'CorsCreateProfileOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsCreateProfileOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsCreateProfileOk != null) {
      yield r'corsCreateProfileOk';
      yield serializers.serialize(
        object.corsCreateProfileOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsCreateProfileOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsCreateProfileOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsCreateProfileOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsCreateProfileOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsCreateProfileOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsCreateProfileOKBuilder();
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

