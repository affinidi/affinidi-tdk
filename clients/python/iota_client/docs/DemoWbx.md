# DemoWbx

## Properties

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **topic_name** | **str**    |             |
| **event**      | **object** |             |

## Example

```python
from affinidi_tdk_iota_client.models.demo_wbx import DemoWbx

# TODO update the JSON string below
json = "{}"
# create an instance of DemoWbx from a JSON string
demo_wbx_instance = DemoWbx.from_json(json)
# print the JSON string representation of the object
print DemoWbx.to_json()

# convert the object into a dict
demo_wbx_dict = demo_wbx_instance.to_dict()
# create an instance of DemoWbx from a dict
demo_wbx_form_dict = demo_wbx.from_dict(demo_wbx_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
