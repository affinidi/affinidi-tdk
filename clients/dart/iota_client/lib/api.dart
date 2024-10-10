//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

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

part 'api/callback_api.dart';
part 'api/configurations_api.dart';
part 'api/default_api.dart';
part 'api/iota_api.dart';
part 'api/pex_query_api.dart';

part 'model/already_exists_error.dart';
part 'model/aws_exchange_credentials.dart';
part 'model/aws_exchange_credentials_ok.dart';
part 'model/aws_exchange_credentials_project_token.dart';
part 'model/aws_exchange_credentials_project_token_ok.dart';
part 'model/aws_exchange_credentials_project_token_ok_credentials.dart';
part 'model/callback_input.dart';
part 'model/callback_response_ok.dart';
part 'model/consent_dto.dart';
part 'model/cors_aws_exchange_credentials_ok.dart';
part 'model/cors_aws_exchange_credentials_project_token_ok.dart';
part 'model/cors_fetch_iota_vp_response_ok.dart';
part 'model/cors_initiate_data_sharing_request_ok.dart';
part 'model/cors_iot_oidc4vpcallback_ok.dart';
part 'model/cors_iota_exchange_credentials_ok.dart';
part 'model/create_iota_configuration_input.dart';
part 'model/create_pex_query_input.dart';
part 'model/delete_pex_queries_input.dart';
part 'model/fetch_iotavp_response_input.dart';
part 'model/fetch_iotavp_response_ok.dart';
part 'model/get_iota_configuration_meta_data_ok.dart';
part 'model/initiate_data_sharing_request_input.dart';
part 'model/initiate_data_sharing_request_ok.dart';
part 'model/initiate_data_sharing_request_ok_data.dart';
part 'model/invalid_parameter_error.dart';
part 'model/invalid_parameter_error_details_inner.dart';
part 'model/iota_configuration_dto.dart';
part 'model/iota_configuration_dto_client_metadata.dart';
part 'model/iota_exchange_credentials.dart';
part 'model/iota_exchange_credentials_ok.dart';
part 'model/iota_exchange_credentials_ok_credentials.dart';
part 'model/list_configuration_ok.dart';
part 'model/list_logged_consents_ok.dart';
part 'model/list_pex_queries_ok.dart';
part 'model/message_publishing_error.dart';
part 'model/not_found_error.dart';
part 'model/operation_forbidden_error.dart';
part 'model/pex_query_dto.dart';
part 'model/prepare_request.dart';
part 'model/prepare_request_created.dart';
part 'model/prepare_request_created_data.dart';
part 'model/resource_limit_exceeded_error.dart';
part 'model/save_pex_queries_update_input.dart';
part 'model/save_pex_queries_update_input_queries_inner.dart';
part 'model/update_configuration_by_id_input.dart';
part 'model/update_configuration_by_id_ok.dart';
part 'model/update_pex_query_input.dart';
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
