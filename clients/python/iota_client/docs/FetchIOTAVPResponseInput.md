# FetchIOTAVPResponseInput

## Properties

| Name                 | Type    | Description          | Notes |
| -------------------- | ------- | -------------------- | ----- |
| **correlation_id**   | **str** | The correlation ID   |
| **transaction_id**   | **str** | The transaction ID   |
| **response_code**    | **str** | The response code.   |
| **configuration_id** | **str** | The configuration ID |

## Example

```python
from affinidi_tdk_iota_client.models.fetch_iotavp_response_input import FetchIOTAVPResponseInput

# TODO update the JSON string below
json = "{}"
# create an instance of FetchIOTAVPResponseInput from a JSON string
fetch_iotavp_response_input_instance = FetchIOTAVPResponseInput.from_json(json)
# print the JSON string representation of the object
print FetchIOTAVPResponseInput.to_json()

# convert the object into a dict
fetch_iotavp_response_input_dict = fetch_iotavp_response_input_instance.to_dict()
# create an instance of FetchIOTAVPResponseInput from a dict
fetch_iotavp_response_input_from_dict = FetchIOTAVPResponseInput.from_dict(fetch_iotavp_response_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
