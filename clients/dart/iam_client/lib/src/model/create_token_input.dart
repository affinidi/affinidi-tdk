//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_token_input.g.dart';

/// CreateTokenInput
///
/// Properties:
/// * [name]
/// * [authenticationMethod]
/// * [description]
@BuiltValue()
abstract class CreateTokenInput
    implements Built<CreateTokenInput, CreateTokenInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'authenticationMethod')
  TokenPrivateKeyAuthenticationMethodDto get authenticationMethod;

  @BuiltValueField(wireName: r'description')
  String? get description;

  CreateTokenInput._();

  factory CreateTokenInput([void updates(CreateTokenInputBuilder b)]) =
      _$CreateTokenInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTokenInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTokenInput> get serializer =>
      _$CreateTokenInputSerializer();
}

class _$CreateTokenInputSerializer
    implements PrimitiveSerializer<CreateTokenInput> {
  @override
  final Iterable<Type> types = const [CreateTokenInput, _$CreateTokenInput];

  @override
  final String wireName = r'CreateTokenInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTokenInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'authenticationMethod';
    yield serializers.serialize(
      object.authenticationMethod,
      specifiedType: const FullType(TokenPrivateKeyAuthenticationMethodDto),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTokenInput object, {
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
    required CreateTokenInputBuilder result,
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
            specifiedType:
                const FullType(TokenPrivateKeyAuthenticationMethodDto),
          ) as TokenPrivateKeyAuthenticationMethodDto;
          result.authenticationMethod.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTokenInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTokenInputBuilder();
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
