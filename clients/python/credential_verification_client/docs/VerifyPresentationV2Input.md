# VerifyPresentationV2Input

Request model of /v2/verify-vp

## Properties

| Name                        | Type                                                                          | Description | Notes      |
| --------------------------- | ----------------------------------------------------------------------------- | ----------- | ---------- |
| **verifiable_presentation** | **object**                                                                    |             | [optional] |
| **pex_query**               | [**VerifyPresentationV2InputPexQuery**](VerifyPresentationV2InputPexQuery.md) |             | [optional] |
| **challenge**               | **str**                                                                       |             | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.verify_presentation_v2_input import VerifyPresentationV2Input

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyPresentationV2Input from a JSON string
verify_presentation_v2_input_instance = VerifyPresentationV2Input.from_json(json)
# print the JSON string representation of the object
print VerifyPresentationV2Input.to_json()

# convert the object into a dict
verify_presentation_v2_input_dict = verify_presentation_v2_input_instance.to_dict()
# create an instance of VerifyPresentationV2Input from a dict
verify_presentation_v2_input_from_dict = VerifyPresentationV2Input.from_dict(verify_presentation_v2_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
