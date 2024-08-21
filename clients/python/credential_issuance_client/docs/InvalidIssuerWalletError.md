# InvalidIssuerWalletError

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[ActionForbiddenErrorDetailsInner]**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.invalid_issuer_wallet_error import InvalidIssuerWalletError

# TODO update the JSON string below
json = "{}"
# create an instance of InvalidIssuerWalletError from a JSON string
invalid_issuer_wallet_error_instance = InvalidIssuerWalletError.from_json(json)
# print the JSON string representation of the object
print InvalidIssuerWalletError.to_json()

# convert the object into a dict
invalid_issuer_wallet_error_dict = invalid_issuer_wallet_error_instance.to_dict()
# create an instance of InvalidIssuerWalletError from a dict
invalid_issuer_wallet_error_from_dict = InvalidIssuerWalletError.from_dict(invalid_issuer_wallet_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
