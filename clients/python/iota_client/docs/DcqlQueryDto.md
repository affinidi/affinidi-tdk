# DcqlQueryDto

## Properties

| Name                  | Type    | Description                                                                                                                 | Notes |
| --------------------- | ------- | --------------------------------------------------------------------------------------------------------------------------- | ----- |
| **ari**               | **str** | The unique resource identifier of the qeuery.                                                                               |
| **query_id**          | **str** | The ID of the query.                                                                                                        |
| **name**              | **str** | The name of the DCQL query to quickly identify the query.                                                                   |
| **description**       | **str** | An optional description of what the query is used for.                                                                      |
| **configuration_ari** | **str** | The unique resource identifier of the related configuration where the query is defined.                                     |
| **dcql_query**        | **str** | The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. |

## Example

```python
from affinidi_tdk_iota_client.models.dcql_query_dto import DcqlQueryDto

# TODO update the JSON string below
json = "{}"
# create an instance of DcqlQueryDto from a JSON string
dcql_query_dto_instance = DcqlQueryDto.from_json(json)
# print the JSON string representation of the object
print DcqlQueryDto.to_json()

# convert the object into a dict
dcql_query_dto_dict = dcql_query_dto_instance.to_dict()
# create an instance of DcqlQueryDto from a dict
dcql_query_dto_from_dict = DcqlQueryDto.from_dict(dcql_query_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
