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

part 'api/configuration_api.dart';
part 'api/credentials_api.dart';
part 'api/issuance_api.dart';
part 'api/offer_api.dart';
part 'api/well_known_api.dart';

part 'model/action_forbidden_error.dart';
part 'model/action_forbidden_error_details_inner.dart';
part 'model/cors_generate_credentials_ok.dart';
part 'model/cors_get_credential_offer_ok.dart';
part 'model/cors_get_well_known_open_id_credential_issuer_ok.dart';
part 'model/create_credential_input.dart';
part 'model/create_issuance_config400_response.dart';
part 'model/create_issuance_config_input.dart';
part 'model/create_issuance_config_input_credential_supported_inner.dart';
part 'model/credential_issuance_id_exist_error.dart';
part 'model/credential_offer_expired_error.dart';
part 'model/credential_offer_response.dart';
part 'model/credential_offer_response_grants.dart';
part 'model/credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code.dart';
part 'model/credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code.dart';
part 'model/credential_proof.dart';
part 'model/credential_response.dart';
part 'model/credential_response_deferred.dart';
part 'model/credential_response_immediate.dart';
part 'model/credential_response_immediate_c_nonce_expires_in.dart';
part 'model/credential_response_immediate_credential.dart';
part 'model/credential_subject_not_valid_error.dart';
part 'model/deferred_credential_input.dart';
part 'model/generate_credentials400_response.dart';
part 'model/get_credential_offer400_response.dart';
part 'model/invalid_credential_request_error.dart';
part 'model/invalid_credential_type_error.dart';
part 'model/invalid_issuer_wallet_error.dart';
part 'model/invalid_jwt_token_error.dart';
part 'model/invalid_parameter_error.dart';
part 'model/invalid_proof_error.dart';
part 'model/issuance_config_dto.dart';
part 'model/issuance_config_dto_credential_supported_inner.dart';
part 'model/issuance_config_list_response.dart';
part 'model/issuance_config_mini_dto.dart';
part 'model/issuance_state_response.dart';
part 'model/list_issuance_response.dart';
part 'model/list_issuance_response_issuances_inner.dart';
part 'model/not_found_error.dart';
part 'model/project_credential_config_exist_error.dart';
part 'model/project_credential_config_not_exist_error.dart';
part 'model/start_issuance400_response.dart';
part 'model/start_issuance_input.dart';
part 'model/start_issuance_input_data_inner.dart';
part 'model/start_issuance_input_data_inner_meta_data.dart';
part 'model/start_issuance_response.dart';
part 'model/update_issuance_config_input.dart';
part 'model/vc_claimed_error.dart';
part 'model/well_known_open_id_credential_issuer_response.dart';


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
