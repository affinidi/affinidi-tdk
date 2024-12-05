# FetchIOTAVPResponseInput

## Properties

| Name                 | Type    | Description                                                                                                                                                    | Notes |
| -------------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **correlation_id**   | **str** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                                             |
| **transaction_id**   | **str** | A unique, randomly generated identifier data-sharing request flow is initiated. This value is used with the response code to fetch the callback response data. |
| **response_code**    | **str** | A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.                       |
| **configuration_id** | **str** | ID of the Affinidi Iota Framework configuration.                                                                                                               |

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
