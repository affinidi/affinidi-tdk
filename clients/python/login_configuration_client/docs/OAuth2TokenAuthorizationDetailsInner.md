# OAuth2TokenAuthorizationDetailsInner

## Properties

| Name                            | Type          | Description                                            | Notes                            |
| ------------------------------- | ------------- | ------------------------------------------------------ | -------------------------------- |
| **type**                        | **str**       | String that determines the authorization details type. | [default to 'openid_credential'] |
| **credential_configuration_id** | **str**       |                                                        |
| **credential_identifiers**      | **List[str]** |                                                        | [optional]                       |

## Example

```python
from affinidi_tdk_login_configuration_client.models.o_auth2_token_authorization_details_inner import OAuth2TokenAuthorizationDetailsInner

# TODO update the JSON string below
json = "{}"
# create an instance of OAuth2TokenAuthorizationDetailsInner from a JSON string
o_auth2_token_authorization_details_inner_instance = OAuth2TokenAuthorizationDetailsInner.from_json(json)
# print the JSON string representation of the object
print OAuth2TokenAuthorizationDetailsInner.to_json()

# convert the object into a dict
o_auth2_token_authorization_details_inner_dict = o_auth2_token_authorization_details_inner_instance.to_dict()
# create an instance of OAuth2TokenAuthorizationDetailsInner from a dict
o_auth2_token_authorization_details_inner_from_dict = OAuth2TokenAuthorizationDetailsInner.from_dict(o_auth2_token_authorization_details_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
