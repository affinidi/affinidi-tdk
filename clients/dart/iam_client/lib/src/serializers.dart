//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:affinidi_tdk_iam_client/src/date_serializer.dart';
import 'package:affinidi_tdk_iam_client/src/model/date.dart';

import 'package:affinidi_tdk_iam_client/src/model/action_forbidden_error.dart';
import 'package:affinidi_tdk_iam_client/src/model/add_user_to_project_input.dart';
import 'package:affinidi_tdk_iam_client/src/model/consumer_auth_token_endpoint_input.dart';
import 'package:affinidi_tdk_iam_client/src/model/consumer_auth_token_endpoint_output.dart';
import 'package:affinidi_tdk_iam_client/src/model/cors_consumer_auth_token_endpoint_ok.dart';
import 'package:affinidi_tdk_iam_client/src/model/create_project_input.dart';
import 'package:affinidi_tdk_iam_client/src/model/create_project_scoped_token_input.dart';
import 'package:affinidi_tdk_iam_client/src/model/create_project_scoped_token_output.dart';
import 'package:affinidi_tdk_iam_client/src/model/create_token_input.dart';
import 'package:affinidi_tdk_iam_client/src/model/delete_access_output.dart';
import 'package:affinidi_tdk_iam_client/src/model/get_well_known_did_ok.dart';
import 'package:affinidi_tdk_iam_client/src/model/grant_access_input.dart';
import 'package:affinidi_tdk_iam_client/src/model/grant_access_output.dart';
import 'package:affinidi_tdk_iam_client/src/model/invalid_did_error.dart';
import 'package:affinidi_tdk_iam_client/src/model/invalid_jwt_token_error.dart';
import 'package:affinidi_tdk_iam_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_iam_client/src/model/json_web_key_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/json_web_key_set_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/not_found_error.dart';
import 'package:affinidi_tdk_iam_client/src/model/policy_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/policy_statement_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/principal_cannot_be_deleted_error.dart';
import 'package:affinidi_tdk_iam_client/src/model/principal_does_not_belong_to_project_error.dart';
import 'package:affinidi_tdk_iam_client/src/model/project_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/project_list.dart';
import 'package:affinidi_tdk_iam_client/src/model/project_with_policy_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/project_with_policy_list.dart';
import 'package:affinidi_tdk_iam_client/src/model/public_key_cannot_be_resolved_from_did_error.dart';
import 'package:affinidi_tdk_iam_client/src/model/rights_enum.dart';
import 'package:affinidi_tdk_iam_client/src/model/service_error_response.dart';
import 'package:affinidi_tdk_iam_client/src/model/service_error_response_details_inner.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_authentication_method_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_list.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto_public_key_info.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto_public_key_info_one_of.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto_public_key_info_one_of1.dart';
import 'package:affinidi_tdk_iam_client/src/model/typed_principal_id.dart';
import 'package:affinidi_tdk_iam_client/src/model/unauthorized_error.dart';
import 'package:affinidi_tdk_iam_client/src/model/unexpected_error.dart';
import 'package:affinidi_tdk_iam_client/src/model/update_access_input.dart';
import 'package:affinidi_tdk_iam_client/src/model/update_access_output.dart';
import 'package:affinidi_tdk_iam_client/src/model/update_project_input.dart';
import 'package:affinidi_tdk_iam_client/src/model/update_token_input.dart';
import 'package:affinidi_tdk_iam_client/src/model/update_token_private_key_authentication_method_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/user_dto.dart';
import 'package:affinidi_tdk_iam_client/src/model/user_list.dart';
import 'package:affinidi_tdk_iam_client/src/model/whoami_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  ActionForbiddenError,
  AddUserToProjectInput,
  ConsumerAuthTokenEndpointInput,
  ConsumerAuthTokenEndpointOutput,
  CorsConsumerAuthTokenEndpointOK,
  CreateProjectInput,
  CreateProjectScopedTokenInput,
  CreateProjectScopedTokenOutput,
  CreateTokenInput,
  DeleteAccessOutput,
  GetWellKnownDidOK,
  GrantAccessInput,
  GrantAccessOutput,
  InvalidDIDError,
  InvalidJwtTokenError,
  InvalidParameterError,
  JsonWebKeyDto,
  JsonWebKeySetDto,
  NotFoundError,
  PolicyDto,
  PolicyStatementDto,
  PrincipalCannotBeDeletedError,
  PrincipalDoesNotBelongToProjectError,
  ProjectDto,
  ProjectList,
  ProjectWithPolicyDto,
  ProjectWithPolicyList,
  PublicKeyCannotBeResolvedFromDidError,
  RightsEnum,
  ServiceErrorResponse,
  ServiceErrorResponseDetailsInner,
  TokenAuthenticationMethodDto,
  TokenDto,
  TokenList,
  TokenPrivateKeyAuthenticationMethodDto,
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo,
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf,
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1,
  TypedPrincipalId,
  UnauthorizedError,
  UnexpectedError,
  UpdateAccessInput,
  UpdateAccessOutput,
  UpdateProjectInput,
  UpdateTokenInput,
  UpdateTokenPrivateKeyAuthenticationMethodDto,
  UserDto,
  UserList,
  WhoamiDto,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
