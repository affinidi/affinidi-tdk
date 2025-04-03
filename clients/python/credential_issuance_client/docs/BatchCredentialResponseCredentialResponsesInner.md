# BatchCredentialResponseCredentialResponsesInner

## Properties

| Name           | Type       | Description                                                                                                                   | Notes |
| -------------- | ---------- | ----------------------------------------------------------------------------------------------------------------------------- | ----- |
| **credential** | **object** | Issued Credential, It can be a string or an object, depending on the Credential format. default format is &#x60;ldp_vc&#x60;. |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.batch_credential_response_credential_responses_inner import BatchCredentialResponseCredentialResponsesInner

# TODO update the JSON string below
json = "{}"
# create an instance of BatchCredentialResponseCredentialResponsesInner from a JSON string
batch_credential_response_credential_responses_inner_instance = BatchCredentialResponseCredentialResponsesInner.from_json(json)
# print the JSON string representation of the object
print BatchCredentialResponseCredentialResponsesInner.to_json()

# convert the object into a dict
batch_credential_response_credential_responses_inner_dict = batch_credential_response_credential_responses_inner_instance.to_dict()
# create an instance of BatchCredentialResponseCredentialResponsesInner from a dict
batch_credential_response_credential_responses_inner_from_dict = BatchCredentialResponseCredentialResponsesInner.from_dict(batch_credential_response_credential_responses_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
