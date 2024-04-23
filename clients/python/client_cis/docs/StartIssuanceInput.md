# StartIssuanceInput

## Properties

| Name            | Type                                                    | Description                                                                                                                                     | Notes      |
| --------------- | ------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **holder_did**  | **str**                                                 | Holder DID                                                                                                                                      |
| **issuance_id** | **str**                                                 | Website&#39;s internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one. | [optional] |
| **data**        | [**StartIssuanceInputData**](StartIssuanceInputData.md) |                                                                                                                                                 |

## Example

```python
from affinidi_tdk_client_cis.models.start_issuance_input import StartIssuanceInput

# TODO update the JSON string below
json = "{}"
# create an instance of StartIssuanceInput from a JSON string
start_issuance_input_instance = StartIssuanceInput.from_json(json)
# print the JSON string representation of the object
print StartIssuanceInput.to_json()

# convert the object into a dict
start_issuance_input_dict = start_issuance_input_instance.to_dict()
# create an instance of StartIssuanceInput from a dict
start_issuance_input_form_dict = start_issuance_input.from_dict(start_issuance_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
