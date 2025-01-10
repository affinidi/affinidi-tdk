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

part 'api/config_api.dart';
part 'api/files_api.dart';
part 'api/nodes_api.dart';
part 'api/profile_data_api.dart';

part 'model/aws_credential_exchange_operation_ok.dart';
part 'model/consumer_metadata_dto.dart';
part 'model/cors_aws_credential_exchange_ok.dart';
part 'model/cors_delete_node_ok.dart';
part 'model/cors_get_config_ok.dart';
part 'model/cors_get_scanned_file_info_ok.dart';
part 'model/cors_get_well_known_jwks_ok.dart';
part 'model/cors_init_nodes_ok.dart';
part 'model/cors_list_node_children_ok.dart';
part 'model/cors_list_root_node_children_ok.dart';
part 'model/cors_list_scanned_files_ok.dart';
part 'model/cors_move_node_ok.dart';
part 'model/cors_permanently_delete_node_ok.dart';
part 'model/cors_restore_node_from_trashbin_ok.dart';
part 'model/cors_start_file_scan_ok.dart';
part 'model/cors_update_profile_data_ok.dart';
part 'model/create_node_input.dart';
part 'model/create_node_ok.dart';
part 'model/delete_node_dto.dart';
part 'model/edek_info.dart';
part 'model/get_config_ok.dart';
part 'model/get_detailed_node_info_ok.dart';
part 'model/get_scanned_file_info_ok.dart';
part 'model/init_nodes_ok.dart';
part 'model/invalid_parameter_error.dart';
part 'model/invalid_parameter_error_details_inner.dart';
part 'model/json_web_key_dto.dart';
part 'model/json_web_key_set_dto.dart';
part 'model/list_node_children_ok.dart';
part 'model/list_root_node_children_ok.dart';
part 'model/list_scanned_files_ok.dart';
part 'model/list_scanned_files_ok_scanned_files_inner.dart';
part 'model/move_node_dto.dart';
part 'model/move_node_input.dart';
part 'model/node_dto.dart';
part 'model/node_status.dart';
part 'model/node_type.dart';
part 'model/not_found_error.dart';
part 'model/query_profile_data_ok.dart';
part 'model/restore_node_from_trashbin.dart';
part 'model/start_file_scan_input.dart';
part 'model/start_file_scan_ok.dart';
part 'model/unexpected_error.dart';
part 'model/update_node_input.dart';
part 'model/update_profile_data_input.dart';
part 'model/update_profile_data_ok.dart';


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
