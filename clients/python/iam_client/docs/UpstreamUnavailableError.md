# UpstreamUnavailableError

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
from affinidi_tdk_iam_client.models.upstream_unavailable_error import UpstreamUnavailableError

# TODO update the JSON string below
json = "{}"
# create an instance of UpstreamUnavailableError from a JSON string
upstream_unavailable_error_instance = UpstreamUnavailableError.from_json(json)
# print the JSON string representation of the object
print UpstreamUnavailableError.to_json()

# convert the object into a dict
upstream_unavailable_error_dict = upstream_unavailable_error_instance.to_dict()
# create an instance of UpstreamUnavailableError from a dict
upstream_unavailable_error_from_dict = UpstreamUnavailableError.from_dict(upstream_unavailable_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
