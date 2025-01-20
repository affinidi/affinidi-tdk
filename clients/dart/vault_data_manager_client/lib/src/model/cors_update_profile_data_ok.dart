//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_update_profile_data_ok.g.dart';

/// CorsUpdateProfileDataOK
///
/// Properties:
/// * [corsUpdateProfileDataOk] 
@BuiltValue()
abstract class CorsUpdateProfileDataOK implements Built<CorsUpdateProfileDataOK, CorsUpdateProfileDataOKBuilder> {
  @BuiltValueField(wireName: r'corsUpdateProfileDataOk')
  String? get corsUpdateProfileDataOk;

  CorsUpdateProfileDataOK._();

  factory CorsUpdateProfileDataOK([void updates(CorsUpdateProfileDataOKBuilder b)]) = _$CorsUpdateProfileDataOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsUpdateProfileDataOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsUpdateProfileDataOK> get serializer => _$CorsUpdateProfileDataOKSerializer();
}

class _$CorsUpdateProfileDataOKSerializer implements PrimitiveSerializer<CorsUpdateProfileDataOK> {
  @override
  final Iterable<Type> types = const [CorsUpdateProfileDataOK, _$CorsUpdateProfileDataOK];

  @override
  final String wireName = r'CorsUpdateProfileDataOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsUpdateProfileDataOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsUpdateProfileDataOk != null) {
      yield r'corsUpdateProfileDataOk';
      yield serializers.serialize(
        object.corsUpdateProfileDataOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsUpdateProfileDataOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsUpdateProfileDataOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsUpdateProfileDataOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsUpdateProfileDataOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsUpdateProfileDataOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsUpdateProfileDataOKBuilder();
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

