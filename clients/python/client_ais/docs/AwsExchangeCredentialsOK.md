# AwsExchangeCredentialsOK

## Properties

| Name              | Type                                                                              | Description | Notes |
| ----------------- | --------------------------------------------------------------------------------- | ----------- | ----- |
| **iot_client_id** | **str**                                                                           |             |
| **credentials**   | [**AwsExchangeCredentialsOKCredentials**](AwsExchangeCredentialsOKCredentials.md) |             |

## Example

```python
from affinidi_tdk_client_ais.models.aws_exchange_credentials_ok import AwsExchangeCredentialsOK

# TODO update the JSON string below
json = "{}"
# create an instance of AwsExchangeCredentialsOK from a JSON string
aws_exchange_credentials_ok_instance = AwsExchangeCredentialsOK.from_json(json)
# print the JSON string representation of the object
print AwsExchangeCredentialsOK.to_json()

# convert the object into a dict
aws_exchange_credentials_ok_dict = aws_exchange_credentials_ok_instance.to_dict()
# create an instance of AwsExchangeCredentialsOK from a dict
aws_exchange_credentials_ok_form_dict = aws_exchange_credentials_ok.from_dict(aws_exchange_credentials_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
