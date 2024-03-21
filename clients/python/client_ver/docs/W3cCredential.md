# W3cCredential

## Properties

| Name                   | Type                                                                    | Description | Notes      |
| ---------------------- | ----------------------------------------------------------------------- | ----------- | ---------- |
| **context**            | [**W3cPresentationContext**](W3cPresentationContext.md)                 |             |
| **id**                 | **str**                                                                 |             | [optional] |
| **type**               | **List[str]**                                                           |             |
| **holder**             | [**W3cCredentialHolder**](W3cCredentialHolder.md)                       |             | [optional] |
| **credential_subject** | [**W3cCredentialCredentialSubject**](W3cCredentialCredentialSubject.md) |             |
| **credential_status**  | [**W3cCredentialStatus**](W3cCredentialStatus.md)                       |             | [optional] |
| **issuance_date**      | **str**                                                                 |             |
| **issuer**             | **str**                                                                 |             |
| **expiration_date**    | **str**                                                                 |             | [optional] |
| **proof**              | [**W3cProof**](W3cProof.md)                                             |             |
| **credential_schema**  | [**W3cCredentialCredentialSchema**](W3cCredentialCredentialSchema.md)   |             | [optional] |

## Example

```python
from affinidi_tdk_client_ver.models.w3c_credential import W3cCredential

# TODO update the JSON string below
json = "{}"
# create an instance of W3cCredential from a JSON string
w3c_credential_instance = W3cCredential.from_json(json)
# print the JSON string representation of the object
print W3cCredential.to_json()

# convert the object into a dict
w3c_credential_dict = w3c_credential_instance.to_dict()
# create an instance of W3cCredential from a dict
w3c_credential_form_dict = w3c_credential.from_dict(w3c_credential_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
