//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_get_well_known_jwks_ok.g.dart';

/// CorsGetWellKnownJwksOK
///
/// Properties:
/// * [corsGetWellKnownJwksOk]
@BuiltValue()
abstract class CorsGetWellKnownJwksOK
    implements Built<CorsGetWellKnownJwksOK, CorsGetWellKnownJwksOKBuilder> {
  @BuiltValueField(wireName: r'corsGetWellKnownJwksOk')
  String? get corsGetWellKnownJwksOk;

  CorsGetWellKnownJwksOK._();

  factory CorsGetWellKnownJwksOK(
          [void updates(CorsGetWellKnownJwksOKBuilder b)]) =
      _$CorsGetWellKnownJwksOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsGetWellKnownJwksOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsGetWellKnownJwksOK> get serializer =>
      _$CorsGetWellKnownJwksOKSerializer();
}

class _$CorsGetWellKnownJwksOKSerializer
    implements PrimitiveSerializer<CorsGetWellKnownJwksOK> {
  @override
  final Iterable<Type> types = const [
    CorsGetWellKnownJwksOK,
    _$CorsGetWellKnownJwksOK
  ];

  @override
  final String wireName = r'CorsGetWellKnownJwksOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsGetWellKnownJwksOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsGetWellKnownJwksOk != null) {
      yield r'corsGetWellKnownJwksOk';
      yield serializers.serialize(
        object.corsGetWellKnownJwksOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsGetWellKnownJwksOK object, {
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
    required CorsGetWellKnownJwksOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsGetWellKnownJwksOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsGetWellKnownJwksOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsGetWellKnownJwksOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsGetWellKnownJwksOKBuilder();
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
