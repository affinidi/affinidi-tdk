//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_list_accounts_ok.g.dart';

/// CorsListAccountsOK
///
/// Properties:
/// * [corsListAccountsOk]
@BuiltValue()
abstract class CorsListAccountsOK
    implements Built<CorsListAccountsOK, CorsListAccountsOKBuilder> {
  @BuiltValueField(wireName: r'corsListAccountsOk')
  String? get corsListAccountsOk;

  CorsListAccountsOK._();

  factory CorsListAccountsOK([void updates(CorsListAccountsOKBuilder b)]) =
      _$CorsListAccountsOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsListAccountsOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsListAccountsOK> get serializer =>
      _$CorsListAccountsOKSerializer();
}

class _$CorsListAccountsOKSerializer
    implements PrimitiveSerializer<CorsListAccountsOK> {
  @override
  final Iterable<Type> types = const [CorsListAccountsOK, _$CorsListAccountsOK];

  @override
  final String wireName = r'CorsListAccountsOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsListAccountsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsListAccountsOk != null) {
      yield r'corsListAccountsOk';
      yield serializers.serialize(
        object.corsListAccountsOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsListAccountsOK object, {
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
    required CorsListAccountsOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsListAccountsOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsListAccountsOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsListAccountsOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsListAccountsOKBuilder();
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
