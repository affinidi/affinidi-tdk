# IotaExchangeCredentialsOK

## Properties

| Name                     | Type                                                                                | Description | Notes |
| ------------------------ | ----------------------------------------------------------------------------------- | ----------- | ----- |
| **connection_client_id** | **str**                                                                             |             |
| **credentials**          | [**IotaExchangeCredentialsOKCredentials**](IotaExchangeCredentialsOKCredentials.md) |             |

## Example

```python
from affinidi_tdk_iota_client.models.iota_exchange_credentials_ok import IotaExchangeCredentialsOK

# TODO update the JSON string below
json = "{}"
# create an instance of IotaExchangeCredentialsOK from a JSON string
iota_exchange_credentials_ok_instance = IotaExchangeCredentialsOK.from_json(json)
# print the JSON string representation of the object
print IotaExchangeCredentialsOK.to_json()

# convert the object into a dict
iota_exchange_credentials_ok_dict = iota_exchange_credentials_ok_instance.to_dict()
# create an instance of IotaExchangeCredentialsOK from a dict
iota_exchange_credentials_ok_from_dict = IotaExchangeCredentialsOK.from_dict(iota_exchange_credentials_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
