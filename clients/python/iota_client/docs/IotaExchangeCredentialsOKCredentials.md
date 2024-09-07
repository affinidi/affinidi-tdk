# IotaExchangeCredentialsOKCredentials

## Properties

| Name              | Type    | Description | Notes |
| ----------------- | ------- | ----------- | ----- |
| **access_key_id** | **str** |             |
| **secret_key**    | **str** |             |
| **session_token** | **str** |             |
| **expiration**    | **str** |             |

## Example

```python
from affinidi_tdk_iota_client.models.iota_exchange_credentials_ok_credentials import IotaExchangeCredentialsOKCredentials

# TODO update the JSON string below
json = "{}"
# create an instance of IotaExchangeCredentialsOKCredentials from a JSON string
iota_exchange_credentials_ok_credentials_instance = IotaExchangeCredentialsOKCredentials.from_json(json)
# print the JSON string representation of the object
print IotaExchangeCredentialsOKCredentials.to_json()

# convert the object into a dict
iota_exchange_credentials_ok_credentials_dict = iota_exchange_credentials_ok_credentials_instance.to_dict()
# create an instance of IotaExchangeCredentialsOKCredentials from a dict
iota_exchange_credentials_ok_credentials_from_dict = IotaExchangeCredentialsOKCredentials.from_dict(iota_exchange_credentials_ok_credentials_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
