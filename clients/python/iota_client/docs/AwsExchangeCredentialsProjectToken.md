# AwsExchangeCredentialsProjectToken

## Properties

| Name                 | Type    | Description                   | Notes |
| -------------------- | ------- | ----------------------------- | ----- |
| **session_id**       | **str** | sessionId generated by client |
| **configuration_id** | **str** | iotaConfiguration Id          |
| **did**              | **str** | Vault DID of the user         |

## Example

```python
from affinidi_tdk_iota_client.models.aws_exchange_credentials_project_token import AwsExchangeCredentialsProjectToken

# TODO update the JSON string below
json = "{}"
# create an instance of AwsExchangeCredentialsProjectToken from a JSON string
aws_exchange_credentials_project_token_instance = AwsExchangeCredentialsProjectToken.from_json(json)
# print the JSON string representation of the object
print AwsExchangeCredentialsProjectToken.to_json()

# convert the object into a dict
aws_exchange_credentials_project_token_dict = aws_exchange_credentials_project_token_instance.to_dict()
# create an instance of AwsExchangeCredentialsProjectToken from a dict
aws_exchange_credentials_project_token_from_dict = AwsExchangeCredentialsProjectToken.from_dict(aws_exchange_credentials_project_token_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)