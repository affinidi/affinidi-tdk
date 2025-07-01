// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add(ActionForbiddenError.serializer)
      ..add(ActionForbiddenErrorDetailsInner.serializer)
      ..add(ActionForbiddenErrorHttpStatusCodeEnum.serializer)
      ..add(ActionForbiddenErrorMessageEnum.serializer)
      ..add(ActionForbiddenErrorNameEnum.serializer)
      ..add(BatchCredentialInput.serializer)
      ..add(BatchCredentialInputCredentialRequestsInner.serializer)
      ..add(BatchCredentialResponse.serializer)
      ..add(BatchCredentialResponseCredentialResponsesInner.serializer)
      ..add(ChangeCredentialStatus400Response.serializer)
      ..add(ChangeCredentialStatusInput.serializer)
      ..add(ChangeCredentialStatusInputChangeReasonEnum.serializer)
      ..add(ChangeStatusForbiddenError.serializer)
      ..add(ChangeStatusForbiddenErrorHttpStatusCodeEnum.serializer)
      ..add(ChangeStatusForbiddenErrorMessageEnum.serializer)
      ..add(ChangeStatusForbiddenErrorNameEnum.serializer)
      ..add(CisConfigurationWebhookSetting.serializer)
      ..add(CisConfigurationWebhookSettingEndpoint.serializer)
      ..add(ClaimedCredentialListResponse.serializer)
      ..add(ClaimedCredentialResponse.serializer)
      ..add(CorsBatchCredentialOK.serializer)
      ..add(CorsGenerateCredentialsOK.serializer)
      ..add(CorsGetClaimedCredentialsOK.serializer)
      ..add(CorsGetCredentialOfferOK.serializer)
      ..add(CorsGetIssuanceIdClaimedCredentialOK.serializer)
      ..add(CorsGetWellKnownOpenIdCredentialIssuerOK.serializer)
      ..add(CreateCredentialInput.serializer)
      ..add(CreateIssuanceConfig400Response.serializer)
      ..add(CreateIssuanceConfigInput.serializer)
      ..add(CreateIssuanceConfigInputFormatEnum.serializer)
      ..add(CredentialIssuanceIdExistError.serializer)
      ..add(CredentialIssuanceIdExistErrorHttpStatusCodeEnum.serializer)
      ..add(CredentialIssuanceIdExistErrorMessageEnum.serializer)
      ..add(CredentialIssuanceIdExistErrorNameEnum.serializer)
      ..add(CredentialOfferClaimedError.serializer)
      ..add(CredentialOfferClaimedErrorHttpStatusCodeEnum.serializer)
      ..add(CredentialOfferClaimedErrorMessageEnum.serializer)
      ..add(CredentialOfferClaimedErrorNameEnum.serializer)
      ..add(CredentialOfferExpiredError.serializer)
      ..add(CredentialOfferExpiredErrorHttpStatusCodeEnum.serializer)
      ..add(CredentialOfferExpiredErrorMessageEnum.serializer)
      ..add(CredentialOfferExpiredErrorNameEnum.serializer)
      ..add(CredentialOfferResponse.serializer)
      ..add(CredentialOfferResponseGrants.serializer)
      ..add(
          CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode
              .serializer)
      ..add(
          CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode
              .serializer)
      ..add(CredentialProof.serializer)
      ..add(CredentialProofProofTypeEnum.serializer)
      ..add(CredentialResponse.serializer)
      ..add(CredentialResponseDeferred.serializer)
      ..add(CredentialResponseImmediate.serializer)
      ..add(CredentialResponseImmediateCNonceExpiresIn.serializer)
      ..add(CredentialResponseImmediateCredential.serializer)
      ..add(CredentialSubjectNotValidError.serializer)
      ..add(CredentialSubjectNotValidErrorHttpStatusCodeEnum.serializer)
      ..add(CredentialSubjectNotValidErrorMessageEnum.serializer)
      ..add(CredentialSubjectNotValidErrorNameEnum.serializer)
      ..add(CredentialSupportedObject.serializer)
      ..add(DeferredCredentialInput.serializer)
      ..add(FlowData.serializer)
      ..add(FlowDataStatusListsDetailsInner.serializer)
      ..add(FlowDataStatusListsDetailsInnerStandardEnum.serializer)
      ..add(FlowDataStatusListsDetailsInnerStatusListPurposeEnum.serializer)
      ..add(GenerateCredentials400Response.serializer)
      ..add(GetCredentialOffer400Response.serializer)
      ..add(InvalidCredentialRequestError.serializer)
      ..add(InvalidCredentialRequestErrorHttpStatusCodeEnum.serializer)
      ..add(InvalidCredentialRequestErrorMessageEnum.serializer)
      ..add(InvalidCredentialRequestErrorNameEnum.serializer)
      ..add(InvalidCredentialTypeError.serializer)
      ..add(InvalidCredentialTypeErrorHttpStatusCodeEnum.serializer)
      ..add(InvalidCredentialTypeErrorMessageEnum.serializer)
      ..add(InvalidCredentialTypeErrorNameEnum.serializer)
      ..add(InvalidIssuerWalletError.serializer)
      ..add(InvalidIssuerWalletErrorHttpStatusCodeEnum.serializer)
      ..add(InvalidIssuerWalletErrorMessageEnum.serializer)
      ..add(InvalidIssuerWalletErrorNameEnum.serializer)
      ..add(InvalidJwtTokenError.serializer)
      ..add(InvalidJwtTokenErrorHttpStatusCodeEnum.serializer)
      ..add(InvalidJwtTokenErrorMessageEnum.serializer)
      ..add(InvalidJwtTokenErrorNameEnum.serializer)
      ..add(InvalidParameterError.serializer)
      ..add(InvalidParameterErrorHttpStatusCodeEnum.serializer)
      ..add(InvalidParameterErrorMessageEnum.serializer)
      ..add(InvalidParameterErrorNameEnum.serializer)
      ..add(InvalidProofError.serializer)
      ..add(InvalidProofErrorHttpStatusCodeEnum.serializer)
      ..add(InvalidProofErrorMessageEnum.serializer)
      ..add(InvalidProofErrorNameEnum.serializer)
      ..add(IssuanceConfigDto.serializer)
      ..add(IssuanceConfigDtoFormatEnum.serializer)
      ..add(IssuanceConfigListResponse.serializer)
      ..add(IssuanceConfigMiniDto.serializer)
      ..add(IssuanceConfigMiniDtoFormatEnum.serializer)
      ..add(IssuanceStateResponse.serializer)
      ..add(IssuanceStateResponseStatusEnum.serializer)
      ..add(ListIssuanceRecordResponse.serializer)
      ..add(ListIssuanceResponse.serializer)
      ..add(ListIssuanceResponseIssuancesInner.serializer)
      ..add(MissingHolderDidError.serializer)
      ..add(MissingHolderDidErrorHttpStatusCodeEnum.serializer)
      ..add(MissingHolderDidErrorMessageEnum.serializer)
      ..add(MissingHolderDidErrorNameEnum.serializer)
      ..add(NotFoundError.serializer)
      ..add(NotFoundErrorHttpStatusCodeEnum.serializer)
      ..add(NotFoundErrorMessageEnum.serializer)
      ..add(NotFoundErrorNameEnum.serializer)
      ..add(ProjectCredentialConfigExistError.serializer)
      ..add(ProjectCredentialConfigExistErrorHttpStatusCodeEnum.serializer)
      ..add(ProjectCredentialConfigExistErrorMessageEnum.serializer)
      ..add(ProjectCredentialConfigExistErrorNameEnum.serializer)
      ..add(ProjectCredentialConfigNotExistError.serializer)
      ..add(ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum.serializer)
      ..add(ProjectCredentialConfigNotExistErrorMessageEnum.serializer)
      ..add(ProjectCredentialConfigNotExistErrorNameEnum.serializer)
      ..add(RevocationForbiddenError.serializer)
      ..add(RevocationForbiddenErrorHttpStatusCodeEnum.serializer)
      ..add(RevocationForbiddenErrorMessageEnum.serializer)
      ..add(RevocationForbiddenErrorNameEnum.serializer)
      ..add(StartIssuance400Response.serializer)
      ..add(StartIssuanceInput.serializer)
      ..add(StartIssuanceInputClaimModeEnum.serializer)
      ..add(StartIssuanceInputDataInner.serializer)
      ..add(StartIssuanceInputDataInnerMetaData.serializer)
      ..add(StartIssuanceInputDataInnerStatusListDetailsInner.serializer)
      ..add(StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum
          .serializer)
      ..add(StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum
          .serializer)
      ..add(StartIssuanceResponse.serializer)
      ..add(SupportedCredentialMetadata.serializer)
      ..add(SupportedCredentialMetadataDisplayInner.serializer)
      ..add(SupportedCredentialMetadataItemLogo.serializer)
      ..add(UpdateIssuanceConfigInput.serializer)
      ..add(UpdateIssuanceConfigInputFormatEnum.serializer)
      ..add(VcClaimedError.serializer)
      ..add(VcClaimedErrorHttpStatusCodeEnum.serializer)
      ..add(VcClaimedErrorMessageEnum.serializer)
      ..add(VcClaimedErrorNameEnum.serializer)
      ..add(WellKnownOpenIdCredentialIssuerResponse.serializer)
      ..add(WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner
          .serializer)
      ..add(WellKnownOpenIdCredentialIssuerResponseDisplay.serializer)
      ..add(WellKnownOpenIdCredentialIssuerResponseDisplayLogo.serializer)
      ..add(WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum
          .serializer)
      ..add(
          WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum.serializer)
      ..add(
          WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum
              .serializer)
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ActionForbiddenErrorDetailsInner)]),
          () => ListBuilder<ActionForbiddenErrorDetailsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BatchCredentialInputCredentialRequestsInner)
          ]),
          () => ListBuilder<BatchCredentialInputCredentialRequestsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BatchCredentialResponseCredentialResponsesInner)
          ]),
          () => ListBuilder<BatchCredentialResponseCredentialResponsesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject)
            ])
          ]),
          () => ListBuilder<BuiltMap<String, JsonObject?>>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CredentialSupportedObject)]),
          () => ListBuilder<CredentialSupportedObject>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CredentialSupportedObject)]),
          () => ListBuilder<CredentialSupportedObject>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CredentialSupportedObject)]),
          () => ListBuilder<CredentialSupportedObject>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FlowData)]),
          () => ListBuilder<FlowData>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(FlowDataStatusListsDetailsInner)]),
          () => ListBuilder<FlowDataStatusListsDetailsInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(IssuanceConfigMiniDto)]),
          () => ListBuilder<IssuanceConfigMiniDto>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ListIssuanceResponseIssuancesInner)]),
          () => ListBuilder<ListIssuanceResponseIssuancesInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(StartIssuanceInputDataInner)]),
          () => ListBuilder<StartIssuanceInputDataInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(SupportedCredentialMetadataDisplayInner)]),
          () => ListBuilder<SupportedCredentialMetadataDisplayInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner)
          ]),
          () => ListBuilder<
              WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum)
          ]),
          () => ListBuilder<
              WellKnownOpenIdCredentialIssuerResponseGrantTypesSupportedEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum)
          ]),
          () => ListBuilder<
              WellKnownOpenIdCredentialIssuerResponseScopesSupportedEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum)
          ]),
          () => ListBuilder<
              WellKnownOpenIdCredentialIssuerResponseTokenEndpointAuthMethodsSupportedEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject)
            ])
          ]),
          () => ListBuilder<BuiltMap<String, JsonObject?>>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(StartIssuanceInputDataInnerStatusListDetailsInner)
          ]),
          () =>
              ListBuilder<StartIssuanceInputDataInnerStatusListDetailsInner>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
