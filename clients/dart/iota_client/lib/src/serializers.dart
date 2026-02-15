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
import 'package:affinidi_tdk_iota_client/src/date_serializer.dart';
import 'package:affinidi_tdk_iota_client/src/model/date.dart';

import 'package:affinidi_tdk_iota_client/src/model/already_exists_error.dart';
import 'package:affinidi_tdk_iota_client/src/model/aws_exchange_credentials.dart';
import 'package:affinidi_tdk_iota_client/src/model/aws_exchange_credentials_ok.dart';
import 'package:affinidi_tdk_iota_client/src/model/aws_exchange_credentials_ok_credentials.dart';
import 'package:affinidi_tdk_iota_client/src/model/aws_exchange_credentials_project_token.dart';
import 'package:affinidi_tdk_iota_client/src/model/callback_input.dart';
import 'package:affinidi_tdk_iota_client/src/model/callback_response_ok.dart';
import 'package:affinidi_tdk_iota_client/src/model/consent_dto.dart';
import 'package:affinidi_tdk_iota_client/src/model/create_dcql_query_input.dart';
import 'package:affinidi_tdk_iota_client/src/model/create_iota_configuration_input.dart';
import 'package:affinidi_tdk_iota_client/src/model/create_pex_query_input.dart';
import 'package:affinidi_tdk_iota_client/src/model/dcql_query_dto.dart';
import 'package:affinidi_tdk_iota_client/src/model/delete_pex_queries_input.dart';
import 'package:affinidi_tdk_iota_client/src/model/fetch_iotavp_response_input.dart';
import 'package:affinidi_tdk_iota_client/src/model/fetch_iotavp_response_ok.dart';
import 'package:affinidi_tdk_iota_client/src/model/get_iota_configuration_meta_data_ok.dart';
import 'package:affinidi_tdk_iota_client/src/model/initiate_data_sharing_request_input.dart';
import 'package:affinidi_tdk_iota_client/src/model/initiate_data_sharing_request_ok.dart';
import 'package:affinidi_tdk_iota_client/src/model/initiate_data_sharing_request_ok_data.dart';
import 'package:affinidi_tdk_iota_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_iota_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:affinidi_tdk_iota_client/src/model/iota_configuration_dto.dart';
import 'package:affinidi_tdk_iota_client/src/model/iota_configuration_dto_client_metadata.dart';
import 'package:affinidi_tdk_iota_client/src/model/iota_exchange_credentials.dart';
import 'package:affinidi_tdk_iota_client/src/model/iota_exchange_credentials_ok.dart';
import 'package:affinidi_tdk_iota_client/src/model/iota_exchange_credentials_ok_credentials.dart';
import 'package:affinidi_tdk_iota_client/src/model/list_configuration_ok.dart';
import 'package:affinidi_tdk_iota_client/src/model/list_dcql_queries_ok.dart';
import 'package:affinidi_tdk_iota_client/src/model/list_logged_consents_ok.dart';
import 'package:affinidi_tdk_iota_client/src/model/list_pex_queries_ok.dart';
import 'package:affinidi_tdk_iota_client/src/model/not_found_error.dart';
import 'package:affinidi_tdk_iota_client/src/model/operation_forbidden_error.dart';
import 'package:affinidi_tdk_iota_client/src/model/pex_query_dto.dart';
import 'package:affinidi_tdk_iota_client/src/model/resource_limit_exceeded_error.dart';
import 'package:affinidi_tdk_iota_client/src/model/save_pex_queries_update_input.dart';
import 'package:affinidi_tdk_iota_client/src/model/save_pex_queries_update_input_queries_inner.dart';
import 'package:affinidi_tdk_iota_client/src/model/update_configuration_by_id_input.dart';
import 'package:affinidi_tdk_iota_client/src/model/update_dcql_query_input.dart';
import 'package:affinidi_tdk_iota_client/src/model/update_pex_query_input.dart';

part 'serializers.g.dart';

@SerializersFor([
  AlreadyExistsError,
  AwsExchangeCredentials,
  AwsExchangeCredentialsOK,
  AwsExchangeCredentialsOKCredentials,
  AwsExchangeCredentialsProjectToken,
  CallbackInput,
  CallbackResponseOK,
  ConsentDto,
  CreateDcqlQueryInput,
  CreateIotaConfigurationInput,
  CreatePexQueryInput,
  DcqlQueryDto,
  DeletePexQueriesInput,
  FetchIOTAVPResponseInput,
  FetchIOTAVPResponseOK,
  GetIotaConfigurationMetaDataOK,
  InitiateDataSharingRequestInput,
  InitiateDataSharingRequestOK,
  InitiateDataSharingRequestOKData,
  InvalidParameterError,
  InvalidParameterErrorDetailsInner,
  IotaConfigurationDto,
  IotaConfigurationDtoClientMetadata,
  IotaExchangeCredentials,
  IotaExchangeCredentialsOK,
  IotaExchangeCredentialsOKCredentials,
  ListConfigurationOK,
  ListDcqlQueriesOK,
  ListLoggedConsentsOK,
  ListPexQueriesOK,
  NotFoundError,
  OperationForbiddenError,
  PexQueryDto,
  ResourceLimitExceededError,
  SavePexQueriesUpdateInput,
  SavePexQueriesUpdateInputQueriesInner,
  UpdateConfigurationByIdInput,
  UpdateDcqlQueryInput,
  UpdatePexQueryInput,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
