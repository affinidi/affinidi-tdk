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
import 'package:affinidi_tdk_vault_data_manager_client/src/date_serializer.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/date.dart';

import 'package:affinidi_tdk_vault_data_manager_client/src/model/aws_credential_exchange_operation_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/consumer_metadata_dto.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_aws_credential_exchange_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_create_profile_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_delete_node_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_get_config_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_get_scanned_file_info_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_get_well_known_jwks_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_grant_access_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_init_nodes_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_list_node_children_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_list_root_node_children_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_list_scanned_files_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_move_node_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_permanently_delete_node_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_restore_node_from_trashbin_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_start_file_scan_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/cors_update_profile_data_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/create_node_input.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/create_node_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/create_profile_input.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/delete_node_dto.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/edek_info.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/get_config_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/get_detailed_node_info_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/get_scanned_file_info_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/grant_access_input.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/init_nodes_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/json_web_key_dto.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/json_web_key_set_dto.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/list_node_children_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/list_root_node_children_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/list_scanned_files_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/list_scanned_files_ok_scanned_files_inner.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/move_node_dto.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/move_node_input.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_dto.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_status.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_type.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/not_found_error.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/query_profile_data_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/restore_node_from_trashbin.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/start_file_scan_input.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/start_file_scan_ok.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/unexpected_error.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/update_node_input.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/update_profile_data_input.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/update_profile_data_ok.dart';

part 'serializers.g.dart';

@SerializersFor([
  AwsCredentialExchangeOperationOK,
  ConsumerMetadataDto,
  CorsAwsCredentialExchangeOK,
  CorsCreateProfileOK,
  CorsDeleteNodeOK,
  CorsGetConfigOK,
  CorsGetScannedFileInfoOK,
  CorsGetWellKnownJwksOK,
  CorsGrantAccessOK,
  CorsInitNodesOK,
  CorsListNodeChildrenOK,
  CorsListRootNodeChildrenOK,
  CorsListScannedFilesOK,
  CorsMoveNodeOK,
  CorsPermanentlyDeleteNodeOK,
  CorsRestoreNodeFromTrashbinOK,
  CorsStartFileScanOK,
  CorsUpdateProfileDataOK,
  CreateNodeInput,
  CreateNodeOK,
  CreateProfileInput,
  DeleteNodeDto,
  EdekInfo,
  GetConfigOK,
  GetDetailedNodeInfoOK,
  GetScannedFileInfoOK,
  GrantAccessInput,
  InitNodesOK,
  InvalidParameterError,
  InvalidParameterErrorDetailsInner,
  JsonWebKeyDto,
  JsonWebKeySetDto,
  ListNodeChildrenOK,
  ListRootNodeChildrenOK,
  ListScannedFilesOK,
  ListScannedFilesOKScannedFilesInner,
  MoveNodeDto,
  MoveNodeInput,
  NodeDto,$NodeDto,
  NodeStatus,
  NodeType,
  NotFoundError,
  QueryProfileDataOK,
  RestoreNodeFromTrashbin,
  StartFileScanInput,
  StartFileScanOK,
  UnexpectedError,
  UpdateNodeInput,
  UpdateProfileDataInput,
  UpdateProfileDataOK,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(NodeDto.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
