//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_profile_data_input.g.dart';

/// UpdateProfileDataInput
///
/// Properties:
/// * [dek] - A base64 encoded data encryption key, encrypted using VFS public key. This is used to get profile data from s3
/// * [data] 
@BuiltValue()
abstract class UpdateProfileDataInput implements Built<UpdateProfileDataInput, UpdateProfileDataInputBuilder> {
  /// A base64 encoded data encryption key, encrypted using VFS public key. This is used to get profile data from s3
  @BuiltValueField(wireName: r'dek')
  String get dek;

  @BuiltValueField(wireName: r'data')
  JsonObject get data;

  UpdateProfileDataInput._();

  factory UpdateProfileDataInput([void updates(UpdateProfileDataInputBuilder b)]) = _$UpdateProfileDataInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateProfileDataInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateProfileDataInput> get serializer => _$UpdateProfileDataInputSerializer();
}

class _$UpdateProfileDataInputSerializer implements PrimitiveSerializer<UpdateProfileDataInput> {
  @override
  final Iterable<Type> types = const [UpdateProfileDataInput, _$UpdateProfileDataInput];

  @override
  final String wireName = r'UpdateProfileDataInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateProfileDataInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dek';
    yield serializers.serialize(
      object.dek,
      specifiedType: const FullType(String),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateProfileDataInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateProfileDataInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dek = valueDes;
          break;
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
  UpdateProfileDataInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateProfileDataInputBuilder();
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

