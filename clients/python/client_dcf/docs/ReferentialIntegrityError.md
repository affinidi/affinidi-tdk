# ReferentialIntegrityError

## Properties

| Name                 | Type      | Description | Notes      |
| -------------------- | --------- | ----------- | ---------- |
| **name**             | **str**   |             | [optional] |
| **message**          | **str**   |             | [optional] |
| **http_status_code** | **float** |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.referential_integrity_error import ReferentialIntegrityError

# TODO update the JSON string below
json = "{}"
# create an instance of ReferentialIntegrityError from a JSON string
referential_integrity_error_instance = ReferentialIntegrityError.from_json(json)
# print the JSON string representation of the object
print ReferentialIntegrityError.to_json()

# convert the object into a dict
referential_integrity_error_dict = referential_integrity_error_instance.to_dict()
# create an instance of ReferentialIntegrityError from a dict
referential_integrity_error_form_dict = referential_integrity_error.from_dict(referential_integrity_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
