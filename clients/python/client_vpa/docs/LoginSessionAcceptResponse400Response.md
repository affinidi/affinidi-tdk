# LoginSessionAcceptResponse400Response

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
from affinidi_tdk_client_vpa.models.login_session_accept_response400_response import LoginSessionAcceptResponse400Response

# TODO update the JSON string below
json = "{}"
# create an instance of LoginSessionAcceptResponse400Response from a JSON string
login_session_accept_response400_response_instance = LoginSessionAcceptResponse400Response.from_json(json)
# print the JSON string representation of the object
print LoginSessionAcceptResponse400Response.to_json()

# convert the object into a dict
login_session_accept_response400_response_dict = login_session_accept_response400_response_instance.to_dict()
# create an instance of LoginSessionAcceptResponse400Response from a dict
login_session_accept_response400_response_form_dict = login_session_accept_response400_response.from_dict(login_session_accept_response400_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
