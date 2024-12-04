# FlowDataStatusListsDetailsInner

## Properties

| Name                         | Type     | Description                                                         | Notes      |
| ---------------------------- | -------- | ------------------------------------------------------------------- | ---------- |
| **status_list_purpose**      | **str**  | Purpose of status list to which credential is added                 |
| **status_list_id**           | **str**  | id of status list                                                   |
| **status_list_index**        | **str**  | as usual it is a number, but all standards use a string             |
| **standard**                 | **str**  |                                                                     |
| **is_active**                | **bool** | indicates status is true or not. Default false.                     |
| **status_activation_reason** | **str**  | text reasoning why the status is true (if true). Optional.          | [optional] |
| **status_activated_at**      | **str**  | ISO 8601 string of the modification date/time the status. Optional. | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.flow_data_status_lists_details_inner import FlowDataStatusListsDetailsInner

# TODO update the JSON string below
json = "{}"
# create an instance of FlowDataStatusListsDetailsInner from a JSON string
flow_data_status_lists_details_inner_instance = FlowDataStatusListsDetailsInner.from_json(json)
# print the JSON string representation of the object
print FlowDataStatusListsDetailsInner.to_json()

# convert the object into a dict
flow_data_status_lists_details_inner_dict = flow_data_status_lists_details_inner_instance.to_dict()
# create an instance of FlowDataStatusListsDetailsInner from a dict
flow_data_status_lists_details_inner_from_dict = FlowDataStatusListsDetailsInner.from_dict(flow_data_status_lists_details_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
