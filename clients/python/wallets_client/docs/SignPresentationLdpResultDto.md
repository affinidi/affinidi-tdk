# SignPresentationLdpResultDto

DTO contains signed presentation

## Properties

| Name             | Type       | Description                         | Notes |
| ---------------- | ---------- | ----------------------------------- | ----- |
| **presentation** | **object** | Signed presentation in Dm1Ld format |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_presentation_ldp_result_dto import SignPresentationLdpResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignPresentationLdpResultDto from a JSON string
sign_presentation_ldp_result_dto_instance = SignPresentationLdpResultDto.from_json(json)
# print the JSON string representation of the object
print SignPresentationLdpResultDto.to_json()

# convert the object into a dict
sign_presentation_ldp_result_dto_dict = sign_presentation_ldp_result_dto_instance.to_dict()
# create an instance of SignPresentationLdpResultDto from a dict
sign_presentation_ldp_result_dto_from_dict = SignPresentationLdpResultDto.from_dict(sign_presentation_ldp_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
