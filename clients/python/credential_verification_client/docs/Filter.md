# Filter

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
from affinidi_tdk_credential_verification_client.models.filter import Filter

# TODO update the JSON string below
json = "{}"
# create an instance of Filter from a JSON string
filter_instance = Filter.from_json(json)
# print the JSON string representation of the object
print Filter.to_json()

# convert the object into a dict
filter_dict = filter_instance.to_dict()
# create an instance of Filter from a dict
filter_from_dict = Filter.from_dict(filter_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
