# ServiceEndpointDto

Service endpoint information

## Properties

| Name            | Type       | Description                                        | Notes                             |
| --------------- | ---------- | -------------------------------------------------- | --------------------------------- |
| **id**          | **string** | service endpoint ID                                | [optional] [default to undefined] |
| **name**        | **string** | name of the service endpoint                       | [optional] [default to undefined] |
| **description** | **string** | description of the service endpoint                | [optional] [default to undefined] |
| **url**         | **string** | service endpoint URL                               | [optional] [default to undefined] |
| **walletAri**   | **string** | wallet ARI this endpoint belongs to                | [optional] [default to undefined] |
| **projectId**   | **string** | project ID                                         | [optional] [default to undefined] |
| **createdAt**   | **string** | when this endpoint was created                     | [optional] [default to undefined] |
| **modifiedAt**  | **string** | when this endpoint was last modified               | [optional] [default to undefined] |
| **createdBy**   | **string** | identifier of the user who created the entity      | [optional] [default to undefined] |
| **modifiedBy**  | **string** | identifier of the user who last updated the entity | [optional] [default to undefined] |

## Example

```typescript
import { ServiceEndpointDto } from '@affinidi-tdk/wallets-client'

const instance: ServiceEndpointDto = {
  id,
  name,
  description,
  url,
  walletAri,
  projectId,
  createdAt,
  modifiedAt,
  createdBy,
  modifiedBy,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
