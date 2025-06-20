# Documentation for VerificationService

<a name="documentation-for-api-endpoints"></a>

## Documentation for API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Class        | Method                                                          | HTTP request                     | Description  |
| ------------ | --------------------------------------------------------------- | -------------------------------- | ------------ |
| _DefaultApi_ | [**verifyCredentials**](Apis/DefaultApi.md#verifycredentials)   | **POST** /v1/verifier/verify-vcs | Verifying VC |
| _DefaultApi_ | [**verifyPresentation**](Apis/DefaultApi.md#verifypresentation) | **POST** /v1/verifier/verify-vp  | Verifying VP |

<a name="documentation-for-models"></a>

## Documentation for Models

- [Constraints](./Models/Constraints.md)
- [Constraints_statuses](./Models/Constraints_statuses.md)
- [CredentialRequirements](./Models/CredentialRequirements.md)
- [CredentialRequirements_constraints](./Models/CredentialRequirements_constraints.md)
- [Descriptor](./Models/Descriptor.md)
- [Error](./Models/Error.md)
- [ErrorDetail](./Models/ErrorDetail.md)
- [EvaluateVpOutput](./Models/EvaluateVpOutput.md)
- [Field](./Models/Field.md)
- [Filter](./Models/Filter.md)
- [Filter\_\_const](./Models/Filter__const.md)
- [Filter_items](./Models/Filter_items.md)
- [Format](./Models/Format.md)
- [HolderSubject](./Models/HolderSubject.md)
- [InputDescriptor](./Models/InputDescriptor.md)
- [InvalidParameterError](./Models/InvalidParameterError.md)
- [JwtObject](./Models/JwtObject.md)
- [LdpObject](./Models/LdpObject.md)
- [NestedDescriptor](./Models/NestedDescriptor.md)
- [NotFoundError](./Models/NotFoundError.md)
- [NotFoundError_details_inner](./Models/NotFoundError_details_inner.md)
- [PdStatus](./Models/PdStatus.md)
- [PresentationDefinition](./Models/PresentationDefinition.md)
- [PresentationSubmission](./Models/PresentationSubmission.md)
- [SubmissionRequirement](./Models/SubmissionRequirement.md)
- [ValidateJwtInput](./Models/ValidateJwtInput.md)
- [ValidateJwtOutput](./Models/ValidateJwtOutput.md)
- [VerifyCredentialInput](./Models/VerifyCredentialInput.md)
- [VerifyCredentialOutput](./Models/VerifyCredentialOutput.md)
- [VerifyPresentationInput](./Models/VerifyPresentationInput.md)
- [VerifyPresentationOutput](./Models/VerifyPresentationOutput.md)
- [W3cCredentialStatus](./Models/W3cCredentialStatus.md)
- [W3cProof](./Models/W3cProof.md)

<a name="documentation-for-authorization"></a>

## Documentation for Authorization

<a name="UserTokenAuth"></a>

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

<a name="ProjectTokenAuth"></a>

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header
