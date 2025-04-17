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
import 'package:affinidi_tdk_credential_issuance_client/src/date_serializer.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/date.dart';

import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/batch_credential_input.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/batch_credential_input_credential_requests_inner.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/batch_credential_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/batch_credential_response_credential_responses_inner.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/change_credential_status400_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/change_credential_status_input.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/change_status_forbidden_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/cis_configuration_webhook_setting.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/cis_configuration_webhook_setting_endpoint.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/claimed_credential_list_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/claimed_credential_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/cors_batch_credential_ok.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/cors_generate_credentials_ok.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/cors_get_claimed_credentials_ok.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/cors_get_credential_offer_ok.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/cors_get_issuance_id_claimed_credential_ok.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/cors_get_well_known_open_id_credential_issuer_ok.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/create_credential_input.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/create_issuance_config400_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/create_issuance_config_input.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_issuance_id_exist_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_claimed_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_expired_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_response_grants.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_proof.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response_deferred.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response_immediate.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response_immediate_c_nonce_expires_in.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response_immediate_credential.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_subject_not_valid_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_supported_object.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/deferred_credential_input.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/flow_data.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/flow_data_status_lists_details_inner.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/generate_credentials400_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/get_credential_offer400_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_credential_request_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_credential_type_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_issuer_wallet_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_jwt_token_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_proof_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/issuance_config_dto.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/issuance_config_list_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/issuance_config_mini_dto.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/issuance_state_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/list_issuance_record_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/list_issuance_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/list_issuance_response_issuances_inner.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/missing_holder_did_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/not_found_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/project_credential_config_exist_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/project_credential_config_not_exist_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/revocation_forbidden_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/start_issuance400_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/start_issuance_input.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/start_issuance_input_data_inner.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/start_issuance_input_data_inner_meta_data.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/start_issuance_input_data_inner_status_list_details_inner.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/start_issuance_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/supported_credential_metadata.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/supported_credential_metadata_display_inner.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/supported_credential_metadata_item_logo.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/update_issuance_config_input.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/vc_claimed_error.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/well_known_open_id_credential_issuer_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/well_known_open_id_credential_issuer_response_credentials_supported_inner.dart';

part 'serializers.g.dart';

@SerializersFor([
  ActionForbiddenError,
  ActionForbiddenErrorDetailsInner,
  BatchCredentialInput,
  BatchCredentialInputCredentialRequestsInner,
  BatchCredentialResponse,
  BatchCredentialResponseCredentialResponsesInner,
  ChangeCredentialStatus400Response,
  ChangeCredentialStatusInput,
  ChangeStatusForbiddenError,
  CisConfigurationWebhookSetting,
  CisConfigurationWebhookSettingEndpoint,
  ClaimedCredentialListResponse,
  ClaimedCredentialResponse,
  CorsBatchCredentialOK,
  CorsGenerateCredentialsOK,
  CorsGetClaimedCredentialsOK,
  CorsGetCredentialOfferOK,
  CorsGetIssuanceIdClaimedCredentialOK,
  CorsGetWellKnownOpenIdCredentialIssuerOK,
  CreateCredentialInput,
  CreateIssuanceConfig400Response,
  CreateIssuanceConfigInput,
  CredentialIssuanceIdExistError,
  CredentialOfferClaimedError,
  CredentialOfferExpiredError,
  CredentialOfferResponse,
  CredentialOfferResponseGrants,
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode,
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode,
  CredentialProof,
  CredentialResponse,
  CredentialResponseDeferred,
  CredentialResponseImmediate,
  CredentialResponseImmediateCNonceExpiresIn,
  CredentialResponseImmediateCredential,
  CredentialSubjectNotValidError,
  CredentialSupportedObject,
  DeferredCredentialInput,
  FlowData,
  FlowDataStatusListsDetailsInner,
  GenerateCredentials400Response,
  GetCredentialOffer400Response,
  InvalidCredentialRequestError,
  InvalidCredentialTypeError,
  InvalidIssuerWalletError,
  InvalidJwtTokenError,
  InvalidParameterError,
  InvalidProofError,
  IssuanceConfigDto,
  IssuanceConfigListResponse,
  IssuanceConfigMiniDto,
  IssuanceStateResponse,
  ListIssuanceRecordResponse,
  ListIssuanceResponse,
  ListIssuanceResponseIssuancesInner,
  MissingHolderDidError,
  NotFoundError,
  ProjectCredentialConfigExistError,
  ProjectCredentialConfigNotExistError,
  RevocationForbiddenError,
  StartIssuance400Response,
  StartIssuanceInput,
  StartIssuanceInputDataInner,
  StartIssuanceInputDataInnerMetaData,
  StartIssuanceInputDataInnerStatusListDetailsInner,
  StartIssuanceResponse,
  SupportedCredentialMetadata,
  SupportedCredentialMetadataDisplayInner,
  SupportedCredentialMetadataItemLogo,
  UpdateIssuanceConfigInput,
  VcClaimedError,
  WellKnownOpenIdCredentialIssuerResponse,
  WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
