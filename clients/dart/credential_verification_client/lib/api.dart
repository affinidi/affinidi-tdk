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

part 'api/default_api.dart';

part 'model/constraints.dart';
part 'model/constraints_statuses.dart';
part 'model/credential_requirements.dart';
part 'model/credential_requirements_constraints.dart';
part 'model/descriptor.dart';
part 'model/error.dart';
part 'model/error_detail.dart';
part 'model/evaluate_vp_output.dart';
part 'model/field.dart';
part 'model/filter.dart';
part 'model/filter_const.dart';
part 'model/filter_items.dart';
part 'model/format.dart';
part 'model/free_form_object.dart';
part 'model/holder_subject.dart';
part 'model/input_descriptor.dart';
part 'model/invalid_parameter_error.dart';
part 'model/jwt_object.dart';
part 'model/ldp_object.dart';
part 'model/nested_descriptor.dart';
part 'model/not_found_error.dart';
part 'model/not_found_error_details_inner.dart';
part 'model/pd_status.dart';
part 'model/presentation_definition.dart';
part 'model/presentation_submission.dart';
part 'model/submission_requirement.dart';
part 'model/validate_jwt_input.dart';
part 'model/validate_jwt_output.dart';
part 'model/verify_credential_input.dart';
part 'model/verify_credential_output.dart';
part 'model/verify_presentation_input.dart';
part 'model/verify_presentation_output.dart';
part 'model/verify_presentation_output_errors.dart';
part 'model/w3c_credential.dart';
part 'model/w3c_credential_credential_schema.dart';
part 'model/w3c_credential_credential_subject.dart';
part 'model/w3c_credential_holder.dart';
part 'model/w3c_credential_status.dart';
part 'model/w3c_presentation.dart';
part 'model/w3c_presentation_context.dart';
part 'model/w3c_presentation_context_one_of_inner.dart';
part 'model/w3c_proof.dart';


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
