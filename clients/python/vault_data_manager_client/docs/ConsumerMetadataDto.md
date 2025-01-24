# ConsumerMetadataDto

## Properties

| Name                      | Type                            | Description                                         | Notes      |
| ------------------------- | ------------------------------- | --------------------------------------------------- | ---------- |
| **node_id**               | **str**                         |                                                     |
| **status**                | [**NodeStatus**](NodeStatus.md) |                                                     |
| **file_count**            | **float**                       |                                                     | [optional] |
| **folder_count**          | **float**                       |                                                     | [optional] |
| **profile_count**         | **float**                       |                                                     | [optional] |
| **name**                  | **str**                         |                                                     |
| **consumer_id**           | **str**                         |                                                     |
| **created_at**            | **str**                         | creation date/time                                  |
| **modified_at**           | **str**                         | modification date/time                              |
| **created_by**            | **str**                         | Identifier of the user who created                  |
| **modified_by**           | **str**                         | Identifier of the user who last updated             |
| **description**           | **str**                         | Description of the node                             | [optional] |
| **type**                  | [**NodeType**](NodeType.md)     |                                                     |
| **consumed_file_storage** | **float**                       | Tracks the amount of bytes used by the stored data. |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.consumer_metadata_dto import ConsumerMetadataDto

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumerMetadataDto from a JSON string
consumer_metadata_dto_instance = ConsumerMetadataDto.from_json(json)
# print the JSON string representation of the object
print ConsumerMetadataDto.to_json()

# convert the object into a dict
consumer_metadata_dto_dict = consumer_metadata_dto_instance.to_dict()
# create an instance of ConsumerMetadataDto from a dict
consumer_metadata_dto_from_dict = ConsumerMetadataDto.from_dict(consumer_metadata_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
