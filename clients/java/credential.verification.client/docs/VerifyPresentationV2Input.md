# VerifyPresentationV2Input

Request model of /v2/verify-vp

## Properties

| Name                       | Type                                                                          | Description                                                                      | Notes      |
| -------------------------- | ----------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | ---------- |
| **verifiablePresentation** | **Object**                                                                    |                                                                                  | [optional] |
| **pexQuery**               | [**VerifyPresentationV2InputPexQuery**](VerifyPresentationV2InputPexQuery.md) |                                                                                  | [optional] |
| **challenge**              | **String**                                                                    | Optional challenge string for domain/challenge verification                      | [optional] |
| **domain**                 | **List&lt;String&gt;**                                                        | Optional domain for verification. Array of domain strings as per W3C VP standard | [optional] |
