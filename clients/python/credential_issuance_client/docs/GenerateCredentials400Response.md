# GenerateCredentials400Response

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[ActionForbiddenErrorDetailsInner]**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.generate_credentials400_response import GenerateCredentials400Response

# TODO update the JSON string below
json = "{}"
# create an instance of GenerateCredentials400Response from a JSON string
generate_credentials400_response_instance = GenerateCredentials400Response.from_json(json)
# print the JSON string representation of the object
print GenerateCredentials400Response.to_json()

# convert the object into a dict
generate_credentials400_response_dict = generate_credentials400_response_instance.to_dict()
# create an instance of GenerateCredentials400Response from a dict
generate_credentials400_response_form_dict = generate_credentials400_response.from_dict(generate_credentials400_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
