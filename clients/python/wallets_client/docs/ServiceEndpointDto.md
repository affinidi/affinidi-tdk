# ServiceEndpointDto

Service endpoint information

## Properties

| Name            | Type    | Description                                        | Notes      |
| --------------- | ------- | -------------------------------------------------- | ---------- |
| **id**          | **str** | service endpoint ID                                | [optional] |
| **name**        | **str** | name of the service endpoint                       | [optional] |
| **description** | **str** | description of the service endpoint                | [optional] |
| **url**         | **str** | service endpoint URL                               | [optional] |
| **wallet_ari**  | **str** | wallet ARI this endpoint belongs to                | [optional] |
| **project_id**  | **str** | project ID                                         | [optional] |
| **created_at**  | **str** | when this endpoint was created                     | [optional] |
| **modified_at** | **str** | when this endpoint was last modified               | [optional] |
| **created_by**  | **str** | identifier of the user who created the entity      | [optional] |
| **modified_by** | **str** | identifier of the user who last updated the entity | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.service_endpoint_dto import ServiceEndpointDto

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceEndpointDto from a JSON string
service_endpoint_dto_instance = ServiceEndpointDto.from_json(json)
# print the JSON string representation of the object
print ServiceEndpointDto.to_json()

# convert the object into a dict
service_endpoint_dto_dict = service_endpoint_dto_instance.to_dict()
# create an instance of ServiceEndpointDto from a dict
service_endpoint_dto_from_dict = ServiceEndpointDto.from_dict(service_endpoint_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
