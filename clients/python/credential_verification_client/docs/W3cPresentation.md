# W3cPresentation

## Properties

| Name                        | Type                                                    | Description | Notes      |
| --------------------------- | ------------------------------------------------------- | ----------- | ---------- |
| **id**                      | **str**                                                 |             | [optional] |
| **type**                    | **List[str]**                                           |             |
| **verifiable_credential**   | [**List[W3cCredential]**](W3cCredential.md)             |             |
| **presentation_submission** | [**PresentationSubmission**](PresentationSubmission.md) |             | [optional] |
| **proof**                   | **object**                                              |             |

## Example

```python
from affinidi_tdk_credential_verification_client.models.w3c_presentation import W3cPresentation

# TODO update the JSON string below
json = "{}"
# create an instance of W3cPresentation from a JSON string
w3c_presentation_instance = W3cPresentation.from_json(json)
# print the JSON string representation of the object
print W3cPresentation.to_json()

# convert the object into a dict
w3c_presentation_dict = w3c_presentation_instance.to_dict()
# create an instance of W3cPresentation from a dict
w3c_presentation_from_dict = W3cPresentation.from_dict(w3c_presentation_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
