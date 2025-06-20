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
import 'package:affinidi_tdk_wallets_client/src/date_serializer.dart';
import 'package:affinidi_tdk_wallets_client/src/model/date.dart';

import 'package:affinidi_tdk_wallets_client/src/model/create_wallet_input.dart';
import 'package:affinidi_tdk_wallets_client/src/model/create_wallet_response.dart';
import 'package:affinidi_tdk_wallets_client/src/model/entity_not_found_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/get_revocation_credential_status_ok.dart';
import 'package:affinidi_tdk_wallets_client/src/model/get_revocation_list_credential_result_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/invalid_did_parameter_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/key_not_found_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/not_found_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/operation_forbidden_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/revoke_credential_input.dart';
import 'package:affinidi_tdk_wallets_client/src/model/service_error_response.dart';
import 'package:affinidi_tdk_wallets_client/src/model/service_error_response_details_inner.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credential400_response.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credential_input_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credential_input_dto_unsigned_credential_params.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credential_result_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credentials_dm1_jwt_input_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credentials_dm1_jwt_result_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credentials_dm1_ld_input_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credentials_dm1_ld_result_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credentials_dm2_ld_input_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credentials_dm2_ld_result_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credentials_dm2_sd_jwt_input_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credentials_dm2_sd_jwt_result_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_jwt_token.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_jwt_token_ok.dart';
import 'package:affinidi_tdk_wallets_client/src/model/signing_failed_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/update_wallet_input.dart';
import 'package:affinidi_tdk_wallets_client/src/model/wallet_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/wallet_dto_keys_inner.dart';
import 'package:affinidi_tdk_wallets_client/src/model/wallets_list_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  CreateWalletInput,
  CreateWalletResponse,
  EntityNotFoundError,
  GetRevocationCredentialStatusOK,
  GetRevocationListCredentialResultDto,
  InvalidDidParameterError,
  InvalidParameterError,
  KeyNotFoundError,
  NotFoundError,
  OperationForbiddenError,
  RevokeCredentialInput,
  ServiceErrorResponse,
  ServiceErrorResponseDetailsInner,
  SignCredential400Response,
  SignCredentialInputDto,
  SignCredentialInputDtoUnsignedCredentialParams,
  SignCredentialResultDto,
  SignCredentialsDm1JwtInputDto,
  SignCredentialsDm1JwtResultDto,
  SignCredentialsDm1LdInputDto,
  SignCredentialsDm1LdResultDto,
  SignCredentialsDm2LdInputDto,
  SignCredentialsDm2LdResultDto,
  SignCredentialsDm2SdJwtInputDto,
  SignCredentialsDm2SdJwtResultDto,
  SignJwtToken,
  SignJwtTokenOK,
  SigningFailedError,
  UpdateWalletInput,
  WalletDto,
  WalletDtoKeysInner,
  WalletsListDto,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
