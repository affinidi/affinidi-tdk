# BuildCredentialRequestOutput

Response model of /build-credential-request

## Properties

| Name                         | Type                                    | Description | Notes |
| ---------------------------- | --------------------------------------- | ----------- | ----- |
| **credential_share_request** | [**FreeFormObject**](FreeFormObject.md) |             |

## Example

```python
from affinidi_tdk_client_ver.models.build_credential_request_output import BuildCredentialRequestOutput

# TODO update the JSON string below
json = "{}"
# create an instance of BuildCredentialRequestOutput from a JSON string
build_credential_request_output_instance = BuildCredentialRequestOutput.from_json(json)
# print the JSON string representation of the object
print BuildCredentialRequestOutput.to_json()

# convert the object into a dict
build_credential_request_output_dict = build_credential_request_output_instance.to_dict()
# create an instance of BuildCredentialRequestOutput from a dict
build_credential_request_output_form_dict = build_credential_request_output.from_dict(build_credential_request_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
