# StartIssuanceInputDataInner

Data to be included in issued credential

## Properties

| Name                    | Type                                                                                                                | Description                                                                                                                                                  | Notes      |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **credential_type_id**  | **str**                                                                                                             | It is a String that identifies a Credential that is being requested to be issued.                                                                            |
| **credential_data**     | **Dict[str, object]**                                                                                               | Object of data to be included in the issued credential ,should match the credential type                                                                     |
| **status_list_details** | [**List[StartIssuanceInputDataInnerStatusListDetailsInner]**](StartIssuanceInputDataInnerStatusListDetailsInner.md) | Types of status lists to which the credential should be added once issued. If not provided or empty, the credential is not added to any of the status lists. | [optional] |
| **meta_data**           | [**StartIssuanceInputDataInnerMetaData**](StartIssuanceInputDataInnerMetaData.md)                                   |                                                                                                                                                              | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.start_issuance_input_data_inner import StartIssuanceInputDataInner

# TODO update the JSON string below
json = "{}"
# create an instance of StartIssuanceInputDataInner from a JSON string
start_issuance_input_data_inner_instance = StartIssuanceInputDataInner.from_json(json)
# print the JSON string representation of the object
print StartIssuanceInputDataInner.to_json()

# convert the object into a dict
start_issuance_input_data_inner_dict = start_issuance_input_data_inner_instance.to_dict()
# create an instance of StartIssuanceInputDataInner from a dict
start_issuance_input_data_inner_from_dict = StartIssuanceInputDataInner.from_dict(start_issuance_input_data_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
