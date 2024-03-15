# OIDCConfigCredentialsSupportedDraft00Inner

## Properties

| Name                                        | Type          | Description | Notes      |
| ------------------------------------------- | ------------- | ----------- | ---------- |
| **cryptographic_binding_methods_supported** | **List[str]** |             | [optional] |
| **cryptographic_suites_supported**          | **List[str]** |             | [optional] |
| **format**                                  | **str**       |             | [optional] |
| **types**                                   | **List[str]** |             | [optional] |

## Example

```python
from affinidi_tdk_client_vpa.models.oidc_config_credentials_supported_draft00_inner import OIDCConfigCredentialsSupportedDraft00Inner

# TODO update the JSON string below
json = "{}"
# create an instance of OIDCConfigCredentialsSupportedDraft00Inner from a JSON string
oidc_config_credentials_supported_draft00_inner_instance = OIDCConfigCredentialsSupportedDraft00Inner.from_json(json)
# print the JSON string representation of the object
print OIDCConfigCredentialsSupportedDraft00Inner.to_json()

# convert the object into a dict
oidc_config_credentials_supported_draft00_inner_dict = oidc_config_credentials_supported_draft00_inner_instance.to_dict()
# create an instance of OIDCConfigCredentialsSupportedDraft00Inner from a dict
oidc_config_credentials_supported_draft00_inner_form_dict = oidc_config_credentials_supported_draft00_inner.from_dict(oidc_config_credentials_supported_draft00_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
