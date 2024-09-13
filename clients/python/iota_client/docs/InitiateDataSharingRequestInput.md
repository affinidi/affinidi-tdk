# InitiateDataSharingRequestInput

## Properties

| Name               | Type      | Description                                                                                                                                      | Notes      |
| ------------------ | --------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **query_id**       | **str**   |                                                                                                                                                  |
| **correlation_id** | **str**   |                                                                                                                                                  |
| **token_max_age**  | **float** | token time to live in seconds                                                                                                                    | [optional] |
| **nonce**          | **str**   | Random value used to prevent replay attacks                                                                                                      |
| **redirect_uri**   | **str**   | the URL that the user will be redirected to after the request has been processed; should be provided by the developer of the client application. |

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
