# credential-verification-client

For more information, please visit [https://github.com/affinidi/affinidi-tdk](https://github.com/affinidi/affinidi-tdk).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), run:

```bash
composer require affinidi-tdk/credential-verification-client
```

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/credential-verification-client/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: ProjectTokenAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$verify_credential_input = new \OpenAPI\Client\Model\VerifyCredentialInput(); // \OpenAPI\Client\Model\VerifyCredentialInput | VerifyCredentials

try {
    $result = $apiInstance->verifyCredentials($verify_credential_input);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->verifyCredentials: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Class        | Method                                                              | HTTP request                     | Description  |
| ------------ | ------------------------------------------------------------------- | -------------------------------- | ------------ |
| _DefaultApi_ | [**verifyCredentials**](docs/Api/DefaultApi.md#verifycredentials)   | **POST** /v1/verifier/verify-vcs | Verifying VC |
| _DefaultApi_ | [**verifyPresentation**](docs/Api/DefaultApi.md#verifypresentation) | **POST** /v1/verifier/verify-vp  | Verifying VP |

## Models

- [Constraints](docs/Model/Constraints.md)
- [ConstraintsStatuses](docs/Model/ConstraintsStatuses.md)
- [CredentialRequirements](docs/Model/CredentialRequirements.md)
- [CredentialRequirementsConstraints](docs/Model/CredentialRequirementsConstraints.md)
- [Descriptor](docs/Model/Descriptor.md)
- [Error](docs/Model/Error.md)
- [ErrorDetail](docs/Model/ErrorDetail.md)
- [EvaluateVpOutput](docs/Model/EvaluateVpOutput.md)
- [Field](docs/Model/Field.md)
- [Filter](docs/Model/Filter.md)
- [FilterConst](docs/Model/FilterConst.md)
- [FilterItems](docs/Model/FilterItems.md)
- [Format](docs/Model/Format.md)
- [FreeFormObject](docs/Model/FreeFormObject.md)
- [HolderSubject](docs/Model/HolderSubject.md)
- [InputDescriptor](docs/Model/InputDescriptor.md)
- [InvalidParameterError](docs/Model/InvalidParameterError.md)
- [JwtObject](docs/Model/JwtObject.md)
- [LdpObject](docs/Model/LdpObject.md)
- [NestedDescriptor](docs/Model/NestedDescriptor.md)
- [NotFoundError](docs/Model/NotFoundError.md)
- [NotFoundErrorDetailsInner](docs/Model/NotFoundErrorDetailsInner.md)
- [PdStatus](docs/Model/PdStatus.md)
- [PresentationDefinition](docs/Model/PresentationDefinition.md)
- [PresentationSubmission](docs/Model/PresentationSubmission.md)
- [SubmissionRequirement](docs/Model/SubmissionRequirement.md)
- [ValidateJwtInput](docs/Model/ValidateJwtInput.md)
- [ValidateJwtOutput](docs/Model/ValidateJwtOutput.md)
- [VerifyCredentialInput](docs/Model/VerifyCredentialInput.md)
- [VerifyCredentialOutput](docs/Model/VerifyCredentialOutput.md)
- [VerifyPresentationInput](docs/Model/VerifyPresentationInput.md)
- [VerifyPresentationOutput](docs/Model/VerifyPresentationOutput.md)
- [VerifyPresentationOutputErrors](docs/Model/VerifyPresentationOutputErrors.md)
- [W3cCredential](docs/Model/W3cCredential.md)
- [W3cCredentialCredentialSchema](docs/Model/W3cCredentialCredentialSchema.md)
- [W3cCredentialCredentialSubject](docs/Model/W3cCredentialCredentialSubject.md)
- [W3cCredentialHolder](docs/Model/W3cCredentialHolder.md)
- [W3cCredentialStatus](docs/Model/W3cCredentialStatus.md)
- [W3cPresentation](docs/Model/W3cPresentation.md)
- [W3cPresentationContext](docs/Model/W3cPresentationContext.md)
- [W3cPresentationContextOneOfInner](docs/Model/W3cPresentationContextOneOfInner.md)
- [W3cProof](docs/Model/W3cProof.md)

## Authorization

Authentication schemes defined for the API:

### UserTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

### ProjectTokenAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

info@affinidi.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
  - Generator version: `7.9.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
