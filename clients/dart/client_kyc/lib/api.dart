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

part 'api/cors_api.dart';
part 'api/otp_api.dart';

part 'model/code_mismatch_exception_error.dart';
part 'model/complete_otp_operation400_response.dart';
part 'model/complete_request.dart';
part 'model/complete_response.dart';
part 'model/cors_complete_otp_operation_ok.dart';
part 'model/cors_initiate_otp_operation_ok.dart';
part 'model/expired_code_exception_error.dart';
part 'model/initiate_request.dart';
part 'model/initiate_response.dart';
part 'model/rate_limit_exceeded_error.dart';
part 'model/rate_limit_exceeded_error_details_inner.dart';
part 'model/service_error_response.dart';
part 'model/service_error_response_details_inner.dart';
part 'model/unexpected_service_error.dart';
part 'model/user_not_found_exception_error.dart';
part 'model/username_exists_exception_error.dart';


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
