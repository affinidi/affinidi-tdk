//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_iota_exchange_credentials_ok.g.dart';

/// CorsIotaExchangeCredentialsOK
///
/// Properties:
/// * [corsIotaExchangeCredentialsOk] 
@BuiltValue()
abstract class CorsIotaExchangeCredentialsOK implements Built<CorsIotaExchangeCredentialsOK, CorsIotaExchangeCredentialsOKBuilder> {
  @BuiltValueField(wireName: r'corsIotaExchangeCredentialsOk')
  String? get corsIotaExchangeCredentialsOk;

  CorsIotaExchangeCredentialsOK._();

  factory CorsIotaExchangeCredentialsOK([void updates(CorsIotaExchangeCredentialsOKBuilder b)]) = _$CorsIotaExchangeCredentialsOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsIotaExchangeCredentialsOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsIotaExchangeCredentialsOK> get serializer => _$CorsIotaExchangeCredentialsOKSerializer();
}

class _$CorsIotaExchangeCredentialsOKSerializer implements PrimitiveSerializer<CorsIotaExchangeCredentialsOK> {
  @override
  final Iterable<Type> types = const [CorsIotaExchangeCredentialsOK, _$CorsIotaExchangeCredentialsOK];

  @override
  final String wireName = r'CorsIotaExchangeCredentialsOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsIotaExchangeCredentialsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsIotaExchangeCredentialsOk != null) {
      yield r'corsIotaExchangeCredentialsOk';
      yield serializers.serialize(
        object.corsIotaExchangeCredentialsOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsIotaExchangeCredentialsOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsIotaExchangeCredentialsOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsIotaExchangeCredentialsOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsIotaExchangeCredentialsOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsIotaExchangeCredentialsOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsIotaExchangeCredentialsOKBuilder();
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

