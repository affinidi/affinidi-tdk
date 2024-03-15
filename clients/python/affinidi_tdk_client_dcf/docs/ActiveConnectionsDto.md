# ActiveConnectionsDto

Object describing the information about an active connection.

## Properties

| Name               | Type         | Description                                                 | Notes      |
| ------------------ | ------------ | ----------------------------------------------------------- | ---------- |
| **connector_id**   | **str**      | The ID of the data connector.                               | [optional] |
| **connection_id**  | **str**      | The ID of the data connection.                              | [optional] |
| **connector_name** | **str**      | The name of the data connector.                             | [optional] |
| **created_at**     | **datetime** | The date and time at which the connection has been created. | [optional] |
| **activated_at**   | **datetime** | The date and time at which the connection has been updated. | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.active_connections_dto import ActiveConnectionsDto

# TODO update the JSON string below
json = "{}"
# create an instance of ActiveConnectionsDto from a JSON string
active_connections_dto_instance = ActiveConnectionsDto.from_json(json)
# print the JSON string representation of the object
print ActiveConnectionsDto.to_json()

# convert the object into a dict
active_connections_dto_dict = active_connections_dto_instance.to_dict()
# create an instance of ActiveConnectionsDto from a dict
active_connections_dto_form_dict = active_connections_dto.from_dict(active_connections_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
