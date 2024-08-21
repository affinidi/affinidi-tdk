# FilterItems

## Properties

| Name                         | Type                                    | Description | Notes      |
| ---------------------------- | --------------------------------------- | ----------- | ---------- |
| **const**                    | [**FilterConst**](FilterConst.md)       |             | [optional] |
| **enum**                     | [**List[FilterConst]**](FilterConst.md) |             | [optional] |
| **exclusive_minimum**        | [**FilterConst**](FilterConst.md)       |             | [optional] |
| **exclusive_maximum**        | [**FilterConst**](FilterConst.md)       |             | [optional] |
| **format**                   | **str**                                 |             | [optional] |
| **format_maximum**           | **str**                                 |             | [optional] |
| **format_minimum**           | **str**                                 |             | [optional] |
| **format_exclusive_maximum** | **str**                                 |             | [optional] |
| **format_exclusive_minimum** | **str**                                 |             | [optional] |
| **min_length**               | **int**                                 |             | [optional] |
| **max_length**               | **int**                                 |             | [optional] |
| **minimum**                  | [**FilterConst**](FilterConst.md)       |             | [optional] |
| **maximum**                  | [**FilterConst**](FilterConst.md)       |             | [optional] |
| **var_not**                  | **object**                              |             | [optional] |
| **pattern**                  | **str**                                 |             | [optional] |
| **contains**                 | [**Filter**](Filter.md)                 |             | [optional] |
| **items**                    | [**FilterItems**](FilterItems.md)       |             | [optional] |
| **type**                     | **str**                                 |             | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.filter_items import FilterItems

# TODO update the JSON string below
json = "{}"
# create an instance of FilterItems from a JSON string
filter_items_instance = FilterItems.from_json(json)
# print the JSON string representation of the object
print FilterItems.to_json()

# convert the object into a dict
filter_items_dict = filter_items_instance.to_dict()
# create an instance of FilterItems from a dict
filter_items_from_dict = FilterItems.from_dict(filter_items_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
