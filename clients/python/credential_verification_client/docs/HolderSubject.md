# HolderSubject

## Properties

| Name          | Type          | Description | Notes |
| ------------- | ------------- | ----------- | ----- |
| **field_id**  | **List[str]** |             |
| **directive** | **str**       |             |

## Example

```python
from affinidi_tdk_credential_verification_client.models.holder_subject import HolderSubject

# TODO update the JSON string below
json = "{}"
# create an instance of HolderSubject from a JSON string
holder_subject_instance = HolderSubject.from_json(json)
# print the JSON string representation of the object
print HolderSubject.to_json()

# convert the object into a dict
holder_subject_dict = holder_subject_instance.to_dict()
# create an instance of HolderSubject from a dict
holder_subject_from_dict = HolderSubject.from_dict(holder_subject_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
