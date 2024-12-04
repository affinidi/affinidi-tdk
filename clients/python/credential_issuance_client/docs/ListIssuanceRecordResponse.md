# ListIssuanceRecordResponse

list of issuance data records

## Properties

| Name                   | Type                              | Description | Notes      |
| ---------------------- | --------------------------------- | ----------- | ---------- |
| **flow_data**          | [**List[FlowData]**](FlowData.md) |             | [optional] |
| **last_evaluated_key** | **str**                           |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.list_issuance_record_response import ListIssuanceRecordResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListIssuanceRecordResponse from a JSON string
list_issuance_record_response_instance = ListIssuanceRecordResponse.from_json(json)
# print the JSON string representation of the object
print ListIssuanceRecordResponse.to_json()

# convert the object into a dict
list_issuance_record_response_dict = list_issuance_record_response_instance.to_dict()
# create an instance of ListIssuanceRecordResponse from a dict
list_issuance_record_response_from_dict = ListIssuanceRecordResponse.from_dict(list_issuance_record_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
