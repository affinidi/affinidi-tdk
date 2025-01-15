//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_login_session_for_idp_ok.g.dart';

/// CorsLoginSessionForIdpOK
///
/// Properties:
/// * [corsLoginSessionForIdpOk] 
@BuiltValue()
abstract class CorsLoginSessionForIdpOK implements Built<CorsLoginSessionForIdpOK, CorsLoginSessionForIdpOKBuilder> {
  @BuiltValueField(wireName: r'corsLoginSessionForIdpOk')
  String? get corsLoginSessionForIdpOk;

  CorsLoginSessionForIdpOK._();

  factory CorsLoginSessionForIdpOK([void updates(CorsLoginSessionForIdpOKBuilder b)]) = _$CorsLoginSessionForIdpOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsLoginSessionForIdpOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsLoginSessionForIdpOK> get serializer => _$CorsLoginSessionForIdpOKSerializer();
}

class _$CorsLoginSessionForIdpOKSerializer implements PrimitiveSerializer<CorsLoginSessionForIdpOK> {
  @override
  final Iterable<Type> types = const [CorsLoginSessionForIdpOK, _$CorsLoginSessionForIdpOK];

  @override
  final String wireName = r'CorsLoginSessionForIdpOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsLoginSessionForIdpOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsLoginSessionForIdpOk != null) {
      yield r'corsLoginSessionForIdpOk';
      yield serializers.serialize(
        object.corsLoginSessionForIdpOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsLoginSessionForIdpOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsLoginSessionForIdpOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsLoginSessionForIdpOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsLoginSessionForIdpOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsLoginSessionForIdpOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsLoginSessionForIdpOKBuilder();
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

