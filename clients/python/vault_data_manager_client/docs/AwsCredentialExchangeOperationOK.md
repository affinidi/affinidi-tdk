# AwsCredentialExchangeOperationOK

## Properties

| Name            | Type    | Description | Notes |
| --------------- | ------- | ----------- | ----- |
| **token**       | **str** |             |
| **identity_id** | **str** |             |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.aws_credential_exchange_operation_ok import AwsCredentialExchangeOperationOK

# TODO update the JSON string below
json = "{}"
# create an instance of AwsCredentialExchangeOperationOK from a JSON string
aws_credential_exchange_operation_ok_instance = AwsCredentialExchangeOperationOK.from_json(json)
# print the JSON string representation of the object
print AwsCredentialExchangeOperationOK.to_json()

# convert the object into a dict
aws_credential_exchange_operation_ok_dict = aws_credential_exchange_operation_ok_instance.to_dict()
# create an instance of AwsCredentialExchangeOperationOK from a dict
aws_credential_exchange_operation_ok_from_dict = AwsCredentialExchangeOperationOK.from_dict(aws_credential_exchange_operation_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
