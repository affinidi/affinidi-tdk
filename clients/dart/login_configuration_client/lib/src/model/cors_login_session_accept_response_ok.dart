//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_login_session_accept_response_ok.g.dart';

/// CorsLoginSessionAcceptResponseOK
///
/// Properties:
/// * [corsLoginSessionAcceptResponseOk] 
@BuiltValue()
abstract class CorsLoginSessionAcceptResponseOK implements Built<CorsLoginSessionAcceptResponseOK, CorsLoginSessionAcceptResponseOKBuilder> {
  @BuiltValueField(wireName: r'corsLoginSessionAcceptResponseOk')
  String? get corsLoginSessionAcceptResponseOk;

  CorsLoginSessionAcceptResponseOK._();

  factory CorsLoginSessionAcceptResponseOK([void updates(CorsLoginSessionAcceptResponseOKBuilder b)]) = _$CorsLoginSessionAcceptResponseOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsLoginSessionAcceptResponseOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsLoginSessionAcceptResponseOK> get serializer => _$CorsLoginSessionAcceptResponseOKSerializer();
}

class _$CorsLoginSessionAcceptResponseOKSerializer implements PrimitiveSerializer<CorsLoginSessionAcceptResponseOK> {
  @override
  final Iterable<Type> types = const [CorsLoginSessionAcceptResponseOK, _$CorsLoginSessionAcceptResponseOK];

  @override
  final String wireName = r'CorsLoginSessionAcceptResponseOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsLoginSessionAcceptResponseOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsLoginSessionAcceptResponseOk != null) {
      yield r'corsLoginSessionAcceptResponseOk';
      yield serializers.serialize(
        object.corsLoginSessionAcceptResponseOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsLoginSessionAcceptResponseOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsLoginSessionAcceptResponseOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsLoginSessionAcceptResponseOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsLoginSessionAcceptResponseOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsLoginSessionAcceptResponseOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsLoginSessionAcceptResponseOKBuilder();
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

