# TokenDto

## Properties

| Name                      | Type                                                                                    | Description                                                 | Notes |
| ------------------------- | --------------------------------------------------------------------------------------- | ----------------------------------------------------------- | ----- |
| **id**                    | **str**                                                                                 | Token Id                                                    |
| **ari**                   | **str**                                                                                 | Token ARI                                                   |
| **owner_ari**             | **str**                                                                                 | The Token owner&#39;s ARI                                   |
| **name**                  | **str**                                                                                 | Owner defined Token display name                            |
| **authentication_method** | [**TokenPrivateKeyAuthenticationMethodDto**](TokenPrivateKeyAuthenticationMethodDto.md) |                                                             |
| **scopes**                | **List[str]**                                                                           | Scopes that will be assigned to the Token on authentication |

## Example

```python
from affinidi_tdk_iam_client.models.token_dto import TokenDto

# TODO update the JSON string below
json = "{}"
# create an instance of TokenDto from a JSON string
token_dto_instance = TokenDto.from_json(json)
# print the JSON string representation of the object
print TokenDto.to_json()

# convert the object into a dict
token_dto_dict = token_dto_instance.to_dict()
# create an instance of TokenDto from a dict
token_dto_from_dict = TokenDto.from_dict(token_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
