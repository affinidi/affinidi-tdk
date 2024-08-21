# LdpObject

## Properties

| Name           | Type          | Description                      | Notes |
| -------------- | ------------- | -------------------------------- | ----- |
| **proof_type** | **List[str]** | List of names of the proof types |

## Example

```python
from affinidi_tdk_credential_verification_client.models.ldp_object import LdpObject

# TODO update the JSON string below
json = "{}"
# create an instance of LdpObject from a JSON string
ldp_object_instance = LdpObject.from_json(json)
# print the JSON string representation of the object
print LdpObject.to_json()

# convert the object into a dict
ldp_object_dict = ldp_object_instance.to_dict()
# create an instance of LdpObject from a dict
ldp_object_from_dict = LdpObject.from_dict(ldp_object_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
