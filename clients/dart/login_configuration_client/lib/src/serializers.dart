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
import 'package:affinidi_tdk_login_configuration_client/src/date_serializer.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/date.dart';

import 'package:affinidi_tdk_login_configuration_client/src/model/action_forbidden_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/add_user_to_group_input.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/blocked_users.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/blocked_users_input.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/cors_login_session_accept_response_ok.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/cors_login_session_for_idp_ok.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/cors_login_session_reject_response_ok.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/create_group_input.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/create_hydra_network_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/create_login_configuration_input.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/create_login_configuration_output.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/create_login_configuration_output_auth.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/create_login_configurations400_response.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/create_project_network_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/error_o_auth2.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/get_user_info.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/group_dto.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/group_names.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/group_names_input.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/group_user_mapping_dto.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/group_user_mappings_list.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/groups_list.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/groups_per_user_limit_exceeded_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/id_token_mapping_item.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/inline_object.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_claim_context_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_groups_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_vp_token_creation_time_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/json_web_key.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/json_web_key_keys_inner.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/list_login_configuration_output.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/login_configuration_client_metadata_input.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/login_configuration_client_metadata_output.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/login_configuration_object.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/login_configuration_read_invalid_client_id_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/login_session_dto.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/login_session_dto_authorization_request.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/login_session_for_idp_input.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/not_found_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/o_auth2_token.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/o_auth2_token_authorization_details_inner.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/oidc_config.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/oidc_config_credentials_supported_draft00_inner.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/redirect_response.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/remove_user_from_group_input.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/resource_creation_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/service_error_response.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/service_error_response_details_inner.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/token_endpoint_auth_method.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/unauthorized_error.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/update_login_configuration_input.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/vp_token_validation_error.dart';

part 'serializers.g.dart';

@SerializersFor([
  ActionForbiddenError,
  AddUserToGroupInput,
  BlockedUsers,
  BlockedUsersInput,
  CorsLoginSessionAcceptResponseOK,
  CorsLoginSessionForIdpOK,
  CorsLoginSessionRejectResponseOK,
  CreateGroupInput,
  CreateHydraNetworkError,
  CreateLoginConfigurationInput,
  CreateLoginConfigurationOutput,
  CreateLoginConfigurationOutputAuth,
  CreateLoginConfigurations400Response,
  CreateProjectNetworkError,
  ErrorOAuth2,
  GetUserInfo,
  GroupDto,
  GroupNames,
  GroupNamesInput,
  GroupUserMappingDto,
  GroupUserMappingsList,
  GroupsList,
  GroupsPerUserLimitExceededError,
  IdTokenMappingItem,
  InlineObject,
  InvalidClaimContextError,
  InvalidGroupsError,
  InvalidParameterError,
  InvalidParameterErrorDetailsInner,
  InvalidVPTokenCreationTimeError,
  JsonWebKey,
  JsonWebKeyKeysInner,
  ListLoginConfigurationOutput,
  LoginConfigurationClientMetadataInput,
  LoginConfigurationClientMetadataOutput,
  LoginConfigurationObject,
  LoginConfigurationReadInvalidClientIdError,
  LoginSessionDto,
  LoginSessionDtoAuthorizationRequest,
  LoginSessionForIDPInput,
  NotFoundError,
  OAuth2Token,
  OAuth2TokenAuthorizationDetailsInner,
  OIDCConfig,
  OIDCConfigCredentialsSupportedDraft00Inner,
  RedirectResponse,
  RemoveUserFromGroupInput,
  ResourceCreationError,
  ServiceErrorResponse,
  ServiceErrorResponseDetailsInner,
  TokenEndpointAuthMethod,
  UnauthorizedError,
  UpdateLoginConfigurationInput,
  VPTokenValidationError,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
