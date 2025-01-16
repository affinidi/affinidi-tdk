//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/update_token_private_key_authentication_method_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_token_input.g.dart';

/// UpdateTokenInput
///
/// Properties:
/// * [name] 
/// * [authenticationMethod] 
@BuiltValue()
abstract class UpdateTokenInput implements Built<UpdateTokenInput, UpdateTokenInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'authenticationMethod')
  UpdateTokenPrivateKeyAuthenticationMethodDto? get authenticationMethod;

  UpdateTokenInput._();

  factory UpdateTokenInput([void updates(UpdateTokenInputBuilder b)]) = _$UpdateTokenInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTokenInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTokenInput> get serializer => _$UpdateTokenInputSerializer();
}

class _$UpdateTokenInputSerializer implements PrimitiveSerializer<UpdateTokenInput> {
  @override
  final Iterable<Type> types = const [UpdateTokenInput, _$UpdateTokenInput];

  @override
  final String wireName = r'UpdateTokenInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTokenInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.authenticationMethod != null) {
      yield r'authenticationMethod';
      yield serializers.serialize(
        object.authenticationMethod,
        specifiedType: const FullType(UpdateTokenPrivateKeyAuthenticationMethodDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTokenInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTokenInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'authenticationMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateTokenPrivateKeyAuthenticationMethodDto),
          ) as UpdateTokenPrivateKeyAuthenticationMethodDto;
          result.authenticationMethod.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTokenInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTokenInputBuilder();
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

