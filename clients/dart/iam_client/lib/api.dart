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

part 'api/consumer_auth_api.dart';
part 'api/default_api.dart';
part 'api/policies_api.dart';
part 'api/projects_api.dart';
part 'api/sts_api.dart';
part 'api/tokens_api.dart';
part 'api/well_known_api.dart';

part 'model/action_forbidden_error.dart';
part 'model/add_user_to_project_input.dart';
part 'model/consumer_auth_token_endpoint_input.dart';
part 'model/consumer_auth_token_endpoint_output.dart';
part 'model/cors_consumer_auth_token_endpoint_ok.dart';
part 'model/create_project_input.dart';
part 'model/create_project_scoped_token_input.dart';
part 'model/create_project_scoped_token_output.dart';
part 'model/create_token_input.dart';
part 'model/get_well_known_did_ok.dart';
part 'model/invalid_jwt_token_error.dart';
part 'model/invalid_parameter_error.dart';
part 'model/json_web_key_dto.dart';
part 'model/json_web_key_set_dto.dart';
part 'model/not_found_error.dart';
part 'model/policy_dto.dart';
part 'model/policy_statement_dto.dart';
part 'model/principal_does_not_belong_to_project_error.dart';
part 'model/project_dto.dart';
part 'model/project_list.dart';
part 'model/service_error_response.dart';
part 'model/service_error_response_details_inner.dart';
part 'model/token_authentication_method_dto.dart';
part 'model/token_dto.dart';
part 'model/token_list.dart';
part 'model/token_private_key_authentication_method_dto.dart';
part 'model/token_private_key_authentication_method_dto_public_key_info.dart';
part 'model/token_private_key_authentication_method_dto_public_key_info_one_of.dart';
part 'model/token_private_key_authentication_method_dto_public_key_info_one_of1.dart';
part 'model/typed_pricipal_id.dart';
part 'model/unauthorized_error.dart';
part 'model/unexpected_error.dart';
part 'model/update_project_input.dart';
part 'model/update_token_input.dart';
part 'model/update_token_private_key_authentication_method_dto.dart';
part 'model/user_dto.dart';
part 'model/user_list.dart';
part 'model/whoami_dto.dart';


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
