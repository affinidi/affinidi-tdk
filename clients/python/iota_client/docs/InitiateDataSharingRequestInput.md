# InitiateDataSharingRequestInput

## Properties

| Name                 | Type      | Description                                                                                                                                      | Notes      |
| -------------------- | --------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **query_id**         | **str**   | The ID of the query.                                                                                                                             |
| **correlation_id**   | **str**   | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                               |
| **token_max_age**    | **float** | This is the lifetime of the signed request token during the data-sharing flow.                                                                   | [optional] |
| **nonce**            | **str**   | A randomly generated value that is added in the request and response to prevent replay attacks.                                                  |
| **redirect_uri**     | **str**   | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. |
| **configuration_id** | **str**   | ID of the Affinidi Iota Framework configuration.                                                                                                 |
| **user_did**         | **str**   | User DID to send the initiating request to. Only required if mode is didcomm                                                                     | [optional] |
| **mode**             | **str**   | Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.                                   |

## Example

```python
from affinidi_tdk_iota_client.models.initiate_data_sharing_request_input import InitiateDataSharingRequestInput

# TODO update the JSON string below
json = "{}"
# create an instance of InitiateDataSharingRequestInput from a JSON string
initiate_data_sharing_request_input_instance = InitiateDataSharingRequestInput.from_json(json)
# print the JSON string representation of the object
print InitiateDataSharingRequestInput.to_json()

# convert the object into a dict
initiate_data_sharing_request_input_dict = initiate_data_sharing_request_input_instance.to_dict()
# create an instance of InitiateDataSharingRequestInput from a dict
initiate_data_sharing_request_input_from_dict = InitiateDataSharingRequestInput.from_dict(initiate_data_sharing_request_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
