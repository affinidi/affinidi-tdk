# StartIssuanceInputData

Data to be included in issued credential

## Properties

| Name                   | Type                  | Description                                                                              | Notes |
| ---------------------- | --------------------- | ---------------------------------------------------------------------------------------- | ----- |
| **credential_type_id** | **str**               | It is a String that identifies a Credential that is being requested to be issued.        |
| **credential_data**    | **Dict[str, object]** | Object of data to be included in the issued credential ,should match the credential type |

## Example

```python
from affinidi_tdk_client_cis.models.start_issuance_input_data import StartIssuanceInputData

# TODO update the JSON string below
json = "{}"
# create an instance of StartIssuanceInputData from a JSON string
start_issuance_input_data_instance = StartIssuanceInputData.from_json(json)
# print the JSON string representation of the object
print StartIssuanceInputData.to_json()

# convert the object into a dict
start_issuance_input_data_dict = start_issuance_input_data_instance.to_dict()
# create an instance of StartIssuanceInputData from a dict
start_issuance_input_data_form_dict = start_issuance_input_data.from_dict(start_issuance_input_data_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
