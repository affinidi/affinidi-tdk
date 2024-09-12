# FetchIOTAVPResponseOK

## Properties

| Name                        | Type    | Description                                                                                                        | Notes      |
| --------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------ | ---------- |
| **correlation_id**          | **str** | A correlationId used for the flow                                                                                  | [optional] |
| **presentation_submission** | **str** | A string that must be a valid JSON object. The structure of presentation submission should follow OID4VP standard. | [optional] |
| **vp_token**                | **str** | A string that must be a valid JSON object. Ensure to escape special characters properly..                          | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.fetch_iotavp_response_ok import FetchIOTAVPResponseOK

# TODO update the JSON string below
json = "{}"
# create an instance of FetchIOTAVPResponseOK from a JSON string
fetch_iotavp_response_ok_instance = FetchIOTAVPResponseOK.from_json(json)
# print the JSON string representation of the object
print FetchIOTAVPResponseOK.to_json()

# convert the object into a dict
fetch_iotavp_response_ok_dict = fetch_iotavp_response_ok_instance.to_dict()
# create an instance of FetchIOTAVPResponseOK from a dict
fetch_iotavp_response_ok_from_dict = FetchIOTAVPResponseOK.from_dict(fetch_iotavp_response_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
