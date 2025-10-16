//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_get_configuration_ok.g.dart';

/// CorsGetConfigurationOK
///
/// Properties:
/// * [corsGetConfigurationOk]
@BuiltValue()
abstract class CorsGetConfigurationOK
    implements Built<CorsGetConfigurationOK, CorsGetConfigurationOKBuilder> {
  @BuiltValueField(wireName: r'corsGetConfigurationOk')
  String? get corsGetConfigurationOk;

  CorsGetConfigurationOK._();

  factory CorsGetConfigurationOK(
          [void updates(CorsGetConfigurationOKBuilder b)]) =
      _$CorsGetConfigurationOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsGetConfigurationOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsGetConfigurationOK> get serializer =>
      _$CorsGetConfigurationOKSerializer();
}

class _$CorsGetConfigurationOKSerializer
    implements PrimitiveSerializer<CorsGetConfigurationOK> {
  @override
  final Iterable<Type> types = const [
    CorsGetConfigurationOK,
    _$CorsGetConfigurationOK
  ];

  @override
  final String wireName = r'CorsGetConfigurationOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsGetConfigurationOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsGetConfigurationOk != null) {
      yield r'corsGetConfigurationOk';
      yield serializers.serialize(
        object.corsGetConfigurationOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsGetConfigurationOK object, {
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
    required CorsGetConfigurationOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsGetConfigurationOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsGetConfigurationOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsGetConfigurationOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsGetConfigurationOKBuilder();
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
