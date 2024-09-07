# IotaExchangeCredentials

## Properties

| Name          | Type    | Description                                                              | Notes |
| ------------- | ------- | ------------------------------------------------------------------------ | ----- |
| **assertion** | **str** | JWT signed with a machine token used to secure the web socket connection |

## Example

```python
from affinidi_tdk_iota_client.models.iota_exchange_credentials import IotaExchangeCredentials

# TODO update the JSON string below
json = "{}"
# create an instance of IotaExchangeCredentials from a JSON string
iota_exchange_credentials_instance = IotaExchangeCredentials.from_json(json)
# print the JSON string representation of the object
print IotaExchangeCredentials.to_json()

# convert the object into a dict
iota_exchange_credentials_dict = iota_exchange_credentials_instance.to_dict()
# create an instance of IotaExchangeCredentials from a dict
iota_exchange_credentials_from_dict = IotaExchangeCredentials.from_dict(iota_exchange_credentials_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
