# StartIssuanceInputDataInnerMetaData

Object of metadata to be included in the additionalProperties related to vc

## Properties

| Name                | Type         | Description                                   | Notes |
| ------------------- | ------------ | --------------------------------------------- | ----- |
| **expiration_date** | **datetime** | Date and time when the credential will expire |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.start_issuance_input_data_inner_meta_data import StartIssuanceInputDataInnerMetaData

# TODO update the JSON string below
json = "{}"
# create an instance of StartIssuanceInputDataInnerMetaData from a JSON string
start_issuance_input_data_inner_meta_data_instance = StartIssuanceInputDataInnerMetaData.from_json(json)
# print the JSON string representation of the object
print StartIssuanceInputDataInnerMetaData.to_json()

# convert the object into a dict
start_issuance_input_data_inner_meta_data_dict = start_issuance_input_data_inner_meta_data_instance.to_dict()
# create an instance of StartIssuanceInputDataInnerMetaData from a dict
start_issuance_input_data_inner_meta_data_form_dict = start_issuance_input_data_inner_meta_data.from_dict(start_issuance_input_data_inner_meta_data_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
