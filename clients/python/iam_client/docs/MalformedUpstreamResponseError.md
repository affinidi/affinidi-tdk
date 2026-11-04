# MalformedUpstreamResponseError

## Properties

| Name                 | Type                                                                    | Description | Notes      |
| -------------------- | ----------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                 |             |
| **message**          | **str**                                                                 |             |
| **http_status_code** | **float**                                                               |             |
| **trace_id**         | **str**                                                                 |             |
| **details**          | [**List[UnexpectedErrorDetailsInner]**](UnexpectedErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_iam_client.models.malformed_upstream_response_error import MalformedUpstreamResponseError

# TODO update the JSON string below
json = "{}"
# create an instance of MalformedUpstreamResponseError from a JSON string
malformed_upstream_response_error_instance = MalformedUpstreamResponseError.from_json(json)
# print the JSON string representation of the object
print MalformedUpstreamResponseError.to_json()

# convert the object into a dict
malformed_upstream_response_error_dict = malformed_upstream_response_error_instance.to_dict()
# create an instance of MalformedUpstreamResponseError from a dict
malformed_upstream_response_error_from_dict = MalformedUpstreamResponseError.from_dict(malformed_upstream_response_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
