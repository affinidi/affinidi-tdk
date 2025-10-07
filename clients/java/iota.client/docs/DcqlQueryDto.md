# DcqlQueryDto

## Properties

| Name                 | Type       | Description                                                                                                                 | Notes |
| -------------------- | ---------- | --------------------------------------------------------------------------------------------------------------------------- | ----- |
| **ari**              | **String** | The unique resource identifier of the qeuery.                                                                               |       |
| **queryId**          | **String** | The ID of the query.                                                                                                        |       |
| **name**             | **String** | The name of the DCQL query to quickly identify the query.                                                                   |       |
| **description**      | **String** | An optional description of what the query is used for.                                                                      |       |
| **configurationAri** | **String** | The unique resource identifier of the related configuration where the query is defined.                                     |       |
| **dcqlQuery**        | **String** | The DCQL query describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. |       |
