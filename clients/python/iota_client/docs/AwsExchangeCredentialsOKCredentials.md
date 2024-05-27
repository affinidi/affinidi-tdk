# AwsExchangeCredentialsOKCredentials

## Properties

| Name            | Type    | Description | Notes |
| --------------- | ------- | ----------- | ----- |
| **identity_id** | **str** |             |
| **token**       | **str** |             |

## Example

```python
from affinidi_tdk_iota_client.models.aws_exchange_credentials_ok_credentials import AwsExchangeCredentialsOKCredentials

# TODO update the JSON string below
json = "{}"
# create an instance of AwsExchangeCredentialsOKCredentials from a JSON string
aws_exchange_credentials_ok_credentials_instance = AwsExchangeCredentialsOKCredentials.from_json(json)
# print the JSON string representation of the object
print AwsExchangeCredentialsOKCredentials.to_json()

# convert the object into a dict
aws_exchange_credentials_ok_credentials_dict = aws_exchange_credentials_ok_credentials_instance.to_dict()
# create an instance of AwsExchangeCredentialsOKCredentials from a dict
aws_exchange_credentials_ok_credentials_form_dict = aws_exchange_credentials_ok_credentials.from_dict(aws_exchange_credentials_ok_credentials_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
