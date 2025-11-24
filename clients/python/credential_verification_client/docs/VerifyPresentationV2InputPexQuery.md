# VerifyPresentationV2InputPexQuery

Presentation Exchange Query containing presentation definition and submission

## Properties

| Name                        | Type       | Description                                          | Notes      |
| --------------------------- | ---------- | ---------------------------------------------------- | ---------- |
| **presentation_definition** | **object** | Presentation definition for the verification request | [optional] |
| **presentation_submission** | **object** | Presentation submission for the verification request | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.verify_presentation_v2_input_pex_query import VerifyPresentationV2InputPexQuery

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyPresentationV2InputPexQuery from a JSON string
verify_presentation_v2_input_pex_query_instance = VerifyPresentationV2InputPexQuery.from_json(json)
# print the JSON string representation of the object
print VerifyPresentationV2InputPexQuery.to_json()

# convert the object into a dict
verify_presentation_v2_input_pex_query_dict = verify_presentation_v2_input_pex_query_instance.to_dict()
# create an instance of VerifyPresentationV2InputPexQuery from a dict
verify_presentation_v2_input_pex_query_from_dict = VerifyPresentationV2InputPexQuery.from_dict(verify_presentation_v2_input_pex_query_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
