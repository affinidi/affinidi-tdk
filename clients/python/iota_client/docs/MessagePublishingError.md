# MessagePublishingError

## Properties

| Name                 | Type                                                                                | Description | Notes      |
| -------------------- | ----------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                             |             |
| **message**          | **str**                                                                             |             |
| **http_status_code** | **float**                                                                           |             |
| **trace_id**         | **str**                                                                             |             |
| **details**          | [**List[InvalidParameterErrorDetailsInner]**](InvalidParameterErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.message_publishing_error import MessagePublishingError

# TODO update the JSON string below
json = "{}"
# create an instance of MessagePublishingError from a JSON string
message_publishing_error_instance = MessagePublishingError.from_json(json)
# print the JSON string representation of the object
print MessagePublishingError.to_json()

# convert the object into a dict
message_publishing_error_dict = message_publishing_error_instance.to_dict()
# create an instance of MessagePublishingError from a dict
message_publishing_error_from_dict = MessagePublishingError.from_dict(message_publishing_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
