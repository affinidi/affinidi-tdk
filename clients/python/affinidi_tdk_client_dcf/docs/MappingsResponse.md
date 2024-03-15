# MappingsResponse

Mappings between common schemas and connectors

## Properties

| Name         | Type                                   | Description                                                                       | Notes |
| ------------ | -------------------------------------- | --------------------------------------------------------------------------------- | ----- |
| **mappings** | **Dict[str, List[BasicConnectorDTO]]** | A dictionary containing mappings between a common schema and a list of connectors |

## Example

```python
from affinidi_tdk_client_dcf.models.mappings_response import MappingsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MappingsResponse from a JSON string
mappings_response_instance = MappingsResponse.from_json(json)
# print the JSON string representation of the object
print MappingsResponse.to_json()

# convert the object into a dict
mappings_response_dict = mappings_response_instance.to_dict()
# create an instance of MappingsResponse from a dict
mappings_response_form_dict = mappings_response.from_dict(mappings_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
