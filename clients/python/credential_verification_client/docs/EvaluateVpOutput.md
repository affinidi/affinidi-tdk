# EvaluateVpOutput

## Properties

| Name       | Type          | Description | Notes |
| ---------- | ------------- | ----------- | ----- |
| **result** | **bool**      |             |
| **errors** | **List[str]** |             |

## Example

```python
from affinidi_tdk_credential_verification_client.models.evaluate_vp_output import EvaluateVpOutput

# TODO update the JSON string below
json = "{}"
# create an instance of EvaluateVpOutput from a JSON string
evaluate_vp_output_instance = EvaluateVpOutput.from_json(json)
# print the JSON string representation of the object
print EvaluateVpOutput.to_json()

# convert the object into a dict
evaluate_vp_output_dict = evaluate_vp_output_instance.to_dict()
# create an instance of EvaluateVpOutput from a dict
evaluate_vp_output_form_dict = evaluate_vp_output.from_dict(evaluate_vp_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
