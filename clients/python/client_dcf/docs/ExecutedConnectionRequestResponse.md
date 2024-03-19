# ExecutedConnectionRequestResponse

Represents the results of executed connection request

## Properties

| Name               | Type          | Description                                                                    | Notes      |
| ------------------ | ------------- | ------------------------------------------------------------------------------ | ---------- |
| **status**         | **str**       | The status of the executed connection request.                                 | [optional] |
| **errors**         | **List[str]** | A list of errors that occurred during the execution of the connection request. | [optional] |
| **connector_id**   | **str**       | The ID of the connector.                                                       | [optional] |
| **connection_id**  | **str**       | The ID of the connection.                                                      | [optional] |
| **connector_name** | **str**       | The name of the connector.                                                     | [optional] |
| **created_at**     | **datetime**  | The date and time at which the connection has been created.                    | [optional] |
| **activated_at**   | **datetime**  | The date and time at which the connection has been activated.                  | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.executed_connection_request_response import ExecutedConnectionRequestResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ExecutedConnectionRequestResponse from a JSON string
executed_connection_request_response_instance = ExecutedConnectionRequestResponse.from_json(json)
# print the JSON string representation of the object
print ExecutedConnectionRequestResponse.to_json()

# convert the object into a dict
executed_connection_request_response_dict = executed_connection_request_response_instance.to_dict()
# create an instance of ExecutedConnectionRequestResponse from a dict
executed_connection_request_response_form_dict = executed_connection_request_response.from_dict(executed_connection_request_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
