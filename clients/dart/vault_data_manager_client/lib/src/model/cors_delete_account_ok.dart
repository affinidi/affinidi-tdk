//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_delete_account_ok.g.dart';

/// CorsDeleteAccountOK
///
/// Properties:
/// * [corsDeleteAccountOk]
@BuiltValue()
abstract class CorsDeleteAccountOK
    implements Built<CorsDeleteAccountOK, CorsDeleteAccountOKBuilder> {
  @BuiltValueField(wireName: r'corsDeleteAccountOk')
  String? get corsDeleteAccountOk;

  CorsDeleteAccountOK._();

  factory CorsDeleteAccountOK([void updates(CorsDeleteAccountOKBuilder b)]) =
      _$CorsDeleteAccountOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsDeleteAccountOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsDeleteAccountOK> get serializer =>
      _$CorsDeleteAccountOKSerializer();
}

class _$CorsDeleteAccountOKSerializer
    implements PrimitiveSerializer<CorsDeleteAccountOK> {
  @override
  final Iterable<Type> types = const [
    CorsDeleteAccountOK,
    _$CorsDeleteAccountOK
  ];

  @override
  final String wireName = r'CorsDeleteAccountOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsDeleteAccountOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsDeleteAccountOk != null) {
      yield r'corsDeleteAccountOk';
      yield serializers.serialize(
        object.corsDeleteAccountOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsDeleteAccountOK object, {
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
    required CorsDeleteAccountOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsDeleteAccountOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsDeleteAccountOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsDeleteAccountOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsDeleteAccountOKBuilder();
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
