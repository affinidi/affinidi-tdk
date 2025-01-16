//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_profile_data_ok.g.dart';

/// UpdateProfileDataOK
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class UpdateProfileDataOK implements Built<UpdateProfileDataOK, UpdateProfileDataOKBuilder> {
  @BuiltValueField(wireName: r'data')
  JsonObject? get data;

  UpdateProfileDataOK._();

  factory UpdateProfileDataOK([void updates(UpdateProfileDataOKBuilder b)]) = _$UpdateProfileDataOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateProfileDataOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateProfileDataOK> get serializer => _$UpdateProfileDataOKSerializer();
}

class _$UpdateProfileDataOKSerializer implements PrimitiveSerializer<UpdateProfileDataOK> {
  @override
  final Iterable<Type> types = const [UpdateProfileDataOK, _$UpdateProfileDataOK];

  @override
  final String wireName = r'UpdateProfileDataOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateProfileDataOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateProfileDataOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateProfileDataOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.data = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateProfileDataOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateProfileDataOKBuilder();
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

