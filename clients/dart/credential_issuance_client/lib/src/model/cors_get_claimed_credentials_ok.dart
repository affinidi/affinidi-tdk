//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_get_claimed_credentials_ok.g.dart';

/// CorsGetClaimedCredentialsOK
///
/// Properties:
/// * [corsGetClaimedCredentialsOk]
@BuiltValue()
abstract class CorsGetClaimedCredentialsOK
    implements
        Built<CorsGetClaimedCredentialsOK, CorsGetClaimedCredentialsOKBuilder> {
  @BuiltValueField(wireName: r'corsGetClaimedCredentialsOk')
  String? get corsGetClaimedCredentialsOk;

  CorsGetClaimedCredentialsOK._();

  factory CorsGetClaimedCredentialsOK(
          [void updates(CorsGetClaimedCredentialsOKBuilder b)]) =
      _$CorsGetClaimedCredentialsOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsGetClaimedCredentialsOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsGetClaimedCredentialsOK> get serializer =>
      _$CorsGetClaimedCredentialsOKSerializer();
}

class _$CorsGetClaimedCredentialsOKSerializer
    implements PrimitiveSerializer<CorsGetClaimedCredentialsOK> {
  @override
  final Iterable<Type> types = const [
    CorsGetClaimedCredentialsOK,
    _$CorsGetClaimedCredentialsOK
  ];

  @override
  final String wireName = r'CorsGetClaimedCredentialsOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsGetClaimedCredentialsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsGetClaimedCredentialsOk != null) {
      yield r'corsGetClaimedCredentialsOk';
      yield serializers.serialize(
        object.corsGetClaimedCredentialsOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsGetClaimedCredentialsOK object, {
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
    required CorsGetClaimedCredentialsOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsGetClaimedCredentialsOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsGetClaimedCredentialsOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsGetClaimedCredentialsOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsGetClaimedCredentialsOKBuilder();
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
