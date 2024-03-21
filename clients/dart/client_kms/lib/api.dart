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


part 'model/create_keys_config_input_dto.dart';
part 'model/create_keys_config_result_dto.dart';
part 'model/create_seed_result_dto.dart';
part 'model/decrypt_by_private_key_input_dto.dart';
part 'model/decrypt_by_private_key_result_dto.dart';
part 'model/error.dart';
part 'model/error_detail.dart';
part 'model/export_seed_result_dto.dart';
part 'model/get_key_result_dto.dart';
part 'model/get_seed_result_dto.dart';
part 'model/import_seed_mnemonic_input_dto.dart';
part 'model/import_seed_raw_input_dto.dart';
part 'model/list_seed_result_dto.dart';
part 'model/list_seed_result_dto_records_inner.dart';
part 'model/sign_credential_input_dto.dart';
part 'model/sign_credential_result_dto.dart';
part 'model/sign_input_dto.dart';
part 'model/sign_jwt_input_dto.dart';
part 'model/sign_jwt_result_dto.dart';
part 'model/sign_result_dto.dart';


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
