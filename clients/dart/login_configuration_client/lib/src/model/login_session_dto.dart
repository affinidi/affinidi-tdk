//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/login_session_dto_authorization_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_session_dto.g.dart';

/// LoginSessionDto
///
/// Properties:
/// * [id] - Session primary identifier
/// * [authorizationRequest]
@BuiltValue()
abstract class LoginSessionDto
    implements Built<LoginSessionDto, LoginSessionDtoBuilder> {
  /// Session primary identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'authorizationRequest')
  LoginSessionDtoAuthorizationRequest get authorizationRequest;

  LoginSessionDto._();

  factory LoginSessionDto([void updates(LoginSessionDtoBuilder b)]) =
      _$LoginSessionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginSessionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginSessionDto> get serializer =>
      _$LoginSessionDtoSerializer();
}

class _$LoginSessionDtoSerializer
    implements PrimitiveSerializer<LoginSessionDto> {
  @override
  final Iterable<Type> types = const [LoginSessionDto, _$LoginSessionDto];

  @override
  final String wireName = r'LoginSessionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginSessionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'authorizationRequest';
    yield serializers.serialize(
      object.authorizationRequest,
      specifiedType: const FullType(LoginSessionDtoAuthorizationRequest),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginSessionDto object, {
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
    required LoginSessionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'authorizationRequest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LoginSessionDtoAuthorizationRequest),
          ) as LoginSessionDtoAuthorizationRequest;
          result.authorizationRequest.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginSessionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginSessionDtoBuilder();
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
