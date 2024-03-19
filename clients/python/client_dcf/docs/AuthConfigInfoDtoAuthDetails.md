# AuthConfigInfoDtoAuthDetails

The authentication information needed to connect with a data source.

## Properties

| Name         | Type    | Description                                                                                                                                                                         | Notes |
| ------------ | ------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **auth_url** | **str** | The base URL with which the data connector framework (DCF) can get authenticated for using the connector. Should be obtained from the API documentation of the third-party service. |
| **template** | **str** | The template for generating the full authentication URL for authenticating the DCF.                                                                                                 |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config_info_dto_auth_details import AuthConfigInfoDtoAuthDetails

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfigInfoDtoAuthDetails from a JSON string
auth_config_info_dto_auth_details_instance = AuthConfigInfoDtoAuthDetails.from_json(json)
# print the JSON string representation of the object
print AuthConfigInfoDtoAuthDetails.to_json()

# convert the object into a dict
auth_config_info_dto_auth_details_dict = auth_config_info_dto_auth_details_instance.to_dict()
# create an instance of AuthConfigInfoDtoAuthDetails from a dict
auth_config_info_dto_auth_details_form_dict = auth_config_info_dto_auth_details.from_dict(auth_config_info_dto_auth_details_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
