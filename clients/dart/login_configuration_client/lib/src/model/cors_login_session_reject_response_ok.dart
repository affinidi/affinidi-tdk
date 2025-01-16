//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_login_session_reject_response_ok.g.dart';

/// CorsLoginSessionRejectResponseOK
///
/// Properties:
/// * [corsLoginSessionRejectResponseOk] 
@BuiltValue()
abstract class CorsLoginSessionRejectResponseOK implements Built<CorsLoginSessionRejectResponseOK, CorsLoginSessionRejectResponseOKBuilder> {
  @BuiltValueField(wireName: r'corsLoginSessionRejectResponseOk')
  String? get corsLoginSessionRejectResponseOk;

  CorsLoginSessionRejectResponseOK._();

  factory CorsLoginSessionRejectResponseOK([void updates(CorsLoginSessionRejectResponseOKBuilder b)]) = _$CorsLoginSessionRejectResponseOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsLoginSessionRejectResponseOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsLoginSessionRejectResponseOK> get serializer => _$CorsLoginSessionRejectResponseOKSerializer();
}

class _$CorsLoginSessionRejectResponseOKSerializer implements PrimitiveSerializer<CorsLoginSessionRejectResponseOK> {
  @override
  final Iterable<Type> types = const [CorsLoginSessionRejectResponseOK, _$CorsLoginSessionRejectResponseOK];

  @override
  final String wireName = r'CorsLoginSessionRejectResponseOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsLoginSessionRejectResponseOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsLoginSessionRejectResponseOk != null) {
      yield r'corsLoginSessionRejectResponseOk';
      yield serializers.serialize(
        object.corsLoginSessionRejectResponseOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsLoginSessionRejectResponseOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsLoginSessionRejectResponseOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsLoginSessionRejectResponseOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsLoginSessionRejectResponseOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsLoginSessionRejectResponseOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsLoginSessionRejectResponseOKBuilder();
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

