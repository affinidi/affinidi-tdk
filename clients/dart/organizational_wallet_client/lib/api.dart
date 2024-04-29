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

part 'api/revocation_api.dart';
part 'api/wallet_api.dart';

part 'model/create_wallet_input.dart';
part 'model/create_wallet_response.dart';
part 'model/did_key_input_params.dart';
part 'model/did_web_input_params.dart';
part 'model/entity_not_found_error.dart';
part 'model/get_revocation_list_credential_result_dto.dart';
part 'model/invalid_did_parameter_error.dart';
part 'model/invalid_parameter_error.dart';
part 'model/key_not_found_error.dart';
part 'model/not_found_error.dart';
part 'model/operation_forbidden_error.dart';
part 'model/revoke_credential_input.dart';
part 'model/service_error_response.dart';
part 'model/service_error_response_details_inner.dart';
part 'model/sign_credential_input_dto.dart';
part 'model/sign_credential_input_dto_unsigned_credential_params.dart';
part 'model/sign_credential_result_dto.dart';
part 'model/update_wallet_input.dart';
part 'model/wallet_dto.dart';
part 'model/wallet_dto_keys_inner.dart';
part 'model/wallets_list_dto.dart';


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
