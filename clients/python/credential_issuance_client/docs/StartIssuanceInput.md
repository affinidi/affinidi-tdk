# StartIssuanceInput

## Properties

| Name            | Type                                                                    | Description                                                                                                                                                                                                                                                                                                                  | Notes      |
| --------------- | ----------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **claim_mode**  | **str**                                                                 | In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated). | [optional] |
| **holder_did**  | **str**                                                                 | Holder DID                                                                                                                                                                                                                                                                                                                   | [optional] |
| **issuance_id** | **str**                                                                 | Website&#39;s internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.                                                                                                                                                                              | [optional] |
| **data**        | [**List[StartIssuanceInputDataInner]**](StartIssuanceInputDataInner.md) |                                                                                                                                                                                                                                                                                                                              |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.start_issuance_input import StartIssuanceInput

# TODO update the JSON string below
json = "{}"
# create an instance of StartIssuanceInput from a JSON string
start_issuance_input_instance = StartIssuanceInput.from_json(json)
# print the JSON string representation of the object
print StartIssuanceInput.to_json()

# convert the object into a dict
start_issuance_input_dict = start_issuance_input_instance.to_dict()
# create an instance of StartIssuanceInput from a dict
start_issuance_input_from_dict = StartIssuanceInput.from_dict(start_issuance_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
