//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/authorization_request_pex.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/authorization_request_dcql.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'login_session_dto_authorization_request.g.dart';

/// Authorization Request Object
///
/// Properties:
/// * [state] - State parameter
/// * [presentationDefinition] - Presentation Definition to ask from the user. In JSON Stringify format.
/// * [ari] - ARI is used for analytics proposals.
/// * [clientId] - clientId used for detect origin.
/// * [nonce] - nonce for VP Token proof challenge
/// * [dcqlQuery] - DCQL query to ask from the user. In JSON Stringify format.
@BuiltValue()
abstract class LoginSessionDtoAuthorizationRequest implements Built<LoginSessionDtoAuthorizationRequest, LoginSessionDtoAuthorizationRequestBuilder> {
  /// One Of [AuthorizationRequestDcql], [AuthorizationRequestPex]
  OneOf get oneOf;

  LoginSessionDtoAuthorizationRequest._();

  factory LoginSessionDtoAuthorizationRequest([void updates(LoginSessionDtoAuthorizationRequestBuilder b)]) = _$LoginSessionDtoAuthorizationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginSessionDtoAuthorizationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginSessionDtoAuthorizationRequest> get serializer => _$LoginSessionDtoAuthorizationRequestSerializer();
}

class _$LoginSessionDtoAuthorizationRequestSerializer implements PrimitiveSerializer<LoginSessionDtoAuthorizationRequest> {
  @override
  final Iterable<Type> types = const [LoginSessionDtoAuthorizationRequest, _$LoginSessionDtoAuthorizationRequest];

  @override
  final String wireName = r'LoginSessionDtoAuthorizationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginSessionDtoAuthorizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginSessionDtoAuthorizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  LoginSessionDtoAuthorizationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginSessionDtoAuthorizationRequestBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(AuthorizationRequestPex), FullType(AuthorizationRequestDcql), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

