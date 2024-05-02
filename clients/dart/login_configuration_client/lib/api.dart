//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';


part 'model/action_forbidden_error.dart';
part 'model/add_user_to_group_input.dart';
part 'model/blocked_users.dart';
part 'model/blocked_users_input.dart';
part 'model/cors_login_session_accept_response_ok.dart';
part 'model/cors_login_session_for_idp_ok.dart';
part 'model/cors_login_session_reject_response_ok.dart';
part 'model/create_group_input.dart';
part 'model/create_login_configuration_input.dart';
part 'model/create_login_configuration_output.dart';
part 'model/create_login_configuration_output_auth.dart';
part 'model/error_o_auth2.dart';
part 'model/get_user_info.dart';
part 'model/group_dto.dart';
part 'model/group_names.dart';
part 'model/group_names_input.dart';
part 'model/group_user_mapping_dto.dart';
part 'model/group_user_mappings_list.dart';
part 'model/groups_list.dart';
part 'model/groups_per_user_limit_exceeded_error.dart';
part 'model/invalid_claim_context_error.dart';
part 'model/invalid_groups_error.dart';
part 'model/invalid_parameter_error.dart';
part 'model/invalid_parameter_error_details_inner.dart';
part 'model/json_web_key.dart';
part 'model/json_web_key_keys_inner.dart';
part 'model/list_login_configuration_output.dart';
part 'model/login_configuration_client_metadata_input.dart';
part 'model/login_configuration_client_metadata_output.dart';
part 'model/login_configuration_object.dart';
part 'model/login_configuration_read_invalid_client_id_error.dart';
part 'model/login_session_dto.dart';
part 'model/login_session_dto_authorization_request.dart';
part 'model/login_session_for_idp_input.dart';
part 'model/not_found_error.dart';
part 'model/o_auth2_token.dart';
part 'model/oidc_config.dart';
part 'model/oidc_config_credentials_supported_draft00_inner.dart';
part 'model/redirect_response.dart';
part 'model/remove_user_from_group_input.dart';
part 'model/resource_creation_error.dart';
part 'model/service_error_response.dart';
part 'model/service_error_response_details_inner.dart';
part 'model/token_endpoint_auth_method.dart';
part 'model/unauthorized_error.dart';
part 'model/update_login_configuration_input.dart';
part 'model/vp_token_validation_error.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
