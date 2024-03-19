# DataResponse

the response body

## Properties

| Name                     | Type                                                        | Description                                           | Notes |
| ------------------------ | ----------------------------------------------------------- | ----------------------------------------------------- | ----- |
| **missing_data_schemas** | [**List[MissingDataSchemasDto]**](MissingDataSchemasDto.md) | list of schemas which are missing to complete request |
| **credentials**          | [**List[CredentialsDto]**](CredentialsDto.md)               | list of VCs that are found                            |

## Example

```python
from affinidi_tdk_client_aca.models.data_response import DataResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DataResponse from a JSON string
data_response_instance = DataResponse.from_json(json)
# print the JSON string representation of the object
print DataResponse.to_json()

# convert the object into a dict
data_response_dict = data_response_instance.to_dict()
# create an instance of DataResponse from a dict
data_response_form_dict = data_response.from_dict(data_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
