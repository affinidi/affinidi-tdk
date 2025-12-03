# SignPresentationLdpInputDto

DTO contains params to sign presentation

## Properties

| Name                      | Type          | Description                                                                                                                                                                                | Notes      |
| ------------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **unsigned_presentation** | **object**    | Unsigned presentation in Dm1 format                                                                                                                                                        |
| **signature_scheme**      | **str**       |                                                                                                                                                                                            | [optional] |
| **signature_suite**       | **str**       | W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1). | [optional] |
| **domain**                | **List[str]** | Domain(s) for which the presentation is intended                                                                                                                                           | [optional] |
| **challenge**             | **str**       | Challenge string                                                                                                                                                                           | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_presentation_ldp_input_dto import SignPresentationLdpInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignPresentationLdpInputDto from a JSON string
sign_presentation_ldp_input_dto_instance = SignPresentationLdpInputDto.from_json(json)
# print the JSON string representation of the object
print SignPresentationLdpInputDto.to_json()

# convert the object into a dict
sign_presentation_ldp_input_dto_dict = sign_presentation_ldp_input_dto_instance.to_dict()
# create an instance of SignPresentationLdpInputDto from a dict
sign_presentation_ldp_input_dto_from_dict = SignPresentationLdpInputDto.from_dict(sign_presentation_ldp_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
