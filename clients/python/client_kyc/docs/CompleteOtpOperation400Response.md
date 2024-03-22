# CompleteOtpOperation400Response

## Properties

| Name                 | Type                                                                                  | Description | Notes      |
| -------------------- | ------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                               |             |
| **message**          | **str**                                                                               |             |
| **http_status_code** | **float**                                                                             |             |
| **trace_id**         | **str**                                                                               |             |
| **details**          | [**List[RateLimitExceededErrorDetailsInner]**](RateLimitExceededErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_kyc.models.complete_otp_operation400_response import CompleteOtpOperation400Response

# TODO update the JSON string below
json = "{}"
# create an instance of CompleteOtpOperation400Response from a JSON string
complete_otp_operation400_response_instance = CompleteOtpOperation400Response.from_json(json)
# print the JSON string representation of the object
print CompleteOtpOperation400Response.to_json()

# convert the object into a dict
complete_otp_operation400_response_dict = complete_otp_operation400_response_instance.to_dict()
# create an instance of CompleteOtpOperation400Response from a dict
complete_otp_operation400_response_form_dict = complete_otp_operation400_response.from_dict(complete_otp_operation400_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
