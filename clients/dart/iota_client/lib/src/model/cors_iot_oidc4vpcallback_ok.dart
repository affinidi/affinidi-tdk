//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_iot_oidc4vpcallback_ok.g.dart';

/// CorsIotOidc4vpcallbackOK
///
/// Properties:
/// * [corsIotOidc4vpcallbackOk]
@BuiltValue()
abstract class CorsIotOidc4vpcallbackOK
    implements
        Built<CorsIotOidc4vpcallbackOK, CorsIotOidc4vpcallbackOKBuilder> {
  @BuiltValueField(wireName: r'corsIotOidc4vpcallbackOk')
  String? get corsIotOidc4vpcallbackOk;

  CorsIotOidc4vpcallbackOK._();

  factory CorsIotOidc4vpcallbackOK(
          [void updates(CorsIotOidc4vpcallbackOKBuilder b)]) =
      _$CorsIotOidc4vpcallbackOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsIotOidc4vpcallbackOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsIotOidc4vpcallbackOK> get serializer =>
      _$CorsIotOidc4vpcallbackOKSerializer();
}

class _$CorsIotOidc4vpcallbackOKSerializer
    implements PrimitiveSerializer<CorsIotOidc4vpcallbackOK> {
  @override
  final Iterable<Type> types = const [
    CorsIotOidc4vpcallbackOK,
    _$CorsIotOidc4vpcallbackOK
  ];

  @override
  final String wireName = r'CorsIotOidc4vpcallbackOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsIotOidc4vpcallbackOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsIotOidc4vpcallbackOk != null) {
      yield r'corsIotOidc4vpcallbackOk';
      yield serializers.serialize(
        object.corsIotOidc4vpcallbackOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsIotOidc4vpcallbackOK object, {
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
    required CorsIotOidc4vpcallbackOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsIotOidc4vpcallbackOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsIotOidc4vpcallbackOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsIotOidc4vpcallbackOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsIotOidc4vpcallbackOKBuilder();
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
