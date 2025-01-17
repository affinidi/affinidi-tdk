//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_fetch_iota_vp_response_ok.g.dart';

/// CorsFetchIotaVpResponseOK
///
/// Properties:
/// * [corsFetchIotaVpResponseOk] 
@BuiltValue()
abstract class CorsFetchIotaVpResponseOK implements Built<CorsFetchIotaVpResponseOK, CorsFetchIotaVpResponseOKBuilder> {
  @BuiltValueField(wireName: r'corsFetchIotaVpResponseOk')
  String? get corsFetchIotaVpResponseOk;

  CorsFetchIotaVpResponseOK._();

  factory CorsFetchIotaVpResponseOK([void updates(CorsFetchIotaVpResponseOKBuilder b)]) = _$CorsFetchIotaVpResponseOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsFetchIotaVpResponseOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsFetchIotaVpResponseOK> get serializer => _$CorsFetchIotaVpResponseOKSerializer();
}

class _$CorsFetchIotaVpResponseOKSerializer implements PrimitiveSerializer<CorsFetchIotaVpResponseOK> {
  @override
  final Iterable<Type> types = const [CorsFetchIotaVpResponseOK, _$CorsFetchIotaVpResponseOK];

  @override
  final String wireName = r'CorsFetchIotaVpResponseOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsFetchIotaVpResponseOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsFetchIotaVpResponseOk != null) {
      yield r'corsFetchIotaVpResponseOk';
      yield serializers.serialize(
        object.corsFetchIotaVpResponseOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsFetchIotaVpResponseOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsFetchIotaVpResponseOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsFetchIotaVpResponseOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsFetchIotaVpResponseOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsFetchIotaVpResponseOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsFetchIotaVpResponseOKBuilder();
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

