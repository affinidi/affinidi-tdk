# AwsExchangeCredentialsSigV4OK

## Properties

| Name               | Type       | Description | Notes |
| ------------------ | ---------- | ----------- | ----- |
| **principal_id**   | **str**    |             |
| **scope**          | **str**    |             |
| **iot_channel_id** | **str**    |             |
| **credentials**    | **object** |             |

## Example

```python
from affinidi_tdk_client_ais.models.aws_exchange_credentials_sig_v4_ok import AwsExchangeCredentialsSigV4OK

# TODO update the JSON string below
json = "{}"
# create an instance of AwsExchangeCredentialsSigV4OK from a JSON string
aws_exchange_credentials_sig_v4_ok_instance = AwsExchangeCredentialsSigV4OK.from_json(json)
# print the JSON string representation of the object
print AwsExchangeCredentialsSigV4OK.to_json()

# convert the object into a dict
aws_exchange_credentials_sig_v4_ok_dict = aws_exchange_credentials_sig_v4_ok_instance.to_dict()
# create an instance of AwsExchangeCredentialsSigV4OK from a dict
aws_exchange_credentials_sig_v4_ok_form_dict = aws_exchange_credentials_sig_v4_ok.from_dict(aws_exchange_credentials_sig_v4_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
