//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_well_known_did_ok.g.dart';

/// GetWellKnownDidOK
@BuiltValue()
abstract class GetWellKnownDidOK
    implements Built<GetWellKnownDidOK, GetWellKnownDidOKBuilder> {
  GetWellKnownDidOK._();

  factory GetWellKnownDidOK([void updates(GetWellKnownDidOKBuilder b)]) =
      _$GetWellKnownDidOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetWellKnownDidOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetWellKnownDidOK> get serializer =>
      _$GetWellKnownDidOKSerializer();
}

class _$GetWellKnownDidOKSerializer
    implements PrimitiveSerializer<GetWellKnownDidOK> {
  @override
  final Iterable<Type> types = const [GetWellKnownDidOK, _$GetWellKnownDidOK];

  @override
  final String wireName = r'GetWellKnownDidOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetWellKnownDidOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    GetWellKnownDidOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  GetWellKnownDidOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetWellKnownDidOKBuilder();
    (serialized as Iterable<Object?>).toList();
    return result.build();
  }
}
