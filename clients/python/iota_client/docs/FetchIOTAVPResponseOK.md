# FetchIOTAVPResponseOK

## Properties

| Name                        | Type    | Description                                                                                                                                                                             | Notes      |
| --------------------------- | ------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **correlation_id**          | **str** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                                                                      | [optional] |
| **presentation_submission** | **str** | A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard. | [optional] |
| **vp_token**                | **str** | A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.                                     | [optional] |

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
