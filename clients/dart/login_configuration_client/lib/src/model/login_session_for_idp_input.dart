//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_session_for_idp_input.g.dart';

/// Input for Creating a Login Session
///
/// Properties:
/// * [loginChallenge] - IDP Login Challenge to Associate the Session with
/// * [clientId] - IDP client id to Associate the Session with
@BuiltValue()
abstract class LoginSessionForIDPInput
    implements Built<LoginSessionForIDPInput, LoginSessionForIDPInputBuilder> {
  /// IDP Login Challenge to Associate the Session with
  @BuiltValueField(wireName: r'loginChallenge')
  String get loginChallenge;

  /// IDP client id to Associate the Session with
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  LoginSessionForIDPInput._();

  factory LoginSessionForIDPInput(
          [void updates(LoginSessionForIDPInputBuilder b)]) =
      _$LoginSessionForIDPInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginSessionForIDPInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginSessionForIDPInput> get serializer =>
      _$LoginSessionForIDPInputSerializer();
}

class _$LoginSessionForIDPInputSerializer
    implements PrimitiveSerializer<LoginSessionForIDPInput> {
  @override
  final Iterable<Type> types = const [
    LoginSessionForIDPInput,
    _$LoginSessionForIDPInput
  ];

  @override
  final String wireName = r'LoginSessionForIDPInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginSessionForIDPInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'loginChallenge';
    yield serializers.serialize(
      object.loginChallenge,
      specifiedType: const FullType(String),
    );
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginSessionForIDPInput object, {
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
    required LoginSessionForIDPInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'loginChallenge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.loginChallenge = valueDes;
          break;
        case r'clientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginSessionForIDPInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginSessionForIDPInputBuilder();
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
