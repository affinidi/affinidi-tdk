# AwsExchangeCredentials

## Properties

| Name          | Type    | Description                                                              | Notes |
| ------------- | ------- | ------------------------------------------------------------------------ | ----- |
| **assertion** | **str** | JWT signed with a machine token used to secure the web socket connection |

## Example

```python
from affinidi_tdk_iota_client.models.aws_exchange_credentials import AwsExchangeCredentials

# TODO update the JSON string below
json = "{}"
# create an instance of AwsExchangeCredentials from a JSON string
aws_exchange_credentials_instance = AwsExchangeCredentials.from_json(json)
# print the JSON string representation of the object
print AwsExchangeCredentials.to_json()

# convert the object into a dict
aws_exchange_credentials_dict = aws_exchange_credentials_instance.to_dict()
# create an instance of AwsExchangeCredentials from a dict
aws_exchange_credentials_from_dict = AwsExchangeCredentials.from_dict(aws_exchange_credentials_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
