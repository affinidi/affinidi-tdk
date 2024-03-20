# W3cProof

## Properties

| Name                    | Type    | Description | Notes      |
| ----------------------- | ------- | ----------- | ---------- |
| **type**                | **str** |             | [optional] |
| **created**             | **str** |             | [optional] |
| **verification_method** | **str** |             |
| **proof_purpose**       | **str** |             |
| **jws**                 | **str** |             | [optional] |
| **proof_value**         | **str** |             | [optional] |
| **nonce**               | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_client_ver.models.w3c_proof import W3cProof

# TODO update the JSON string below
json = "{}"
# create an instance of W3cProof from a JSON string
w3c_proof_instance = W3cProof.from_json(json)
# print the JSON string representation of the object
print W3cProof.to_json()

# convert the object into a dict
w3c_proof_dict = w3c_proof_instance.to_dict()
# create an instance of W3cProof from a dict
w3c_proof_form_dict = w3c_proof.from_dict(w3c_proof_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
