# affinidi_tdk_client_vpa.SessionApi

All URIs are relative to _http://localhost_

| Method                                                                           | HTTP request                                            | Description                               |
| -------------------------------------------------------------------------------- | ------------------------------------------------------- | ----------------------------------------- |
| [**login_session_accept_response**](SessionApi.md#login_session_accept_response) | **POST** /v1/login/sessions/{sessionId}/accept-response | Accept OIDC VP Response for Login Session |
| [**login_session_for_idp**](SessionApi.md#login_session_for_idp)                 | **POST** /v1/login/sessions/for-idp                     | Create Login Session for IDP Login        |
| [**login_session_reject_response**](SessionApi.md#login_session_reject_response) | **POST** /v1/login/sessions/{sessionId}/reject-response | Reject Response for Login Session         |

# **login_session_accept_response**

> LoginSessionAcceptResponseOutput login_session_accept_response(session_id, login_session_accept_response_input=login_session_accept_response_input)

Accept OIDC VP Response for Login Session

Accepts and Validates the OIDC VP Response sent by the Wallet

### Example

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.login_session_accept_response_input import LoginSessionAcceptResponseInput
from affinidi_tdk_client_vpa.models.login_session_accept_response_output import LoginSessionAcceptResponseOutput
from affinidi_tdk_client_vpa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_vpa.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_vpa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_vpa.SessionApi(api_client)
    session_id = 'session_id_example' # str | The id of the login session
    login_session_accept_response_input = affinidi_tdk_client_vpa.LoginSessionAcceptResponseInput() # LoginSessionAcceptResponseInput | LoginSessionAcceptResponse (optional)

    try:
        # Accept OIDC VP Response for Login Session
        api_response = api_instance.login_session_accept_response(session_id, login_session_accept_response_input=login_session_accept_response_input)
        print("The response of SessionApi->login_session_accept_response:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SessionApi->login_session_accept_response: %s\n" % e)
```

### Parameters

| Name                                    | Type                                                                      | Description                 | Notes      |
| --------------------------------------- | ------------------------------------------------------------------------- | --------------------------- | ---------- |
| **session_id**                          | **str**                                                                   | The id of the login session |
| **login_session_accept_response_input** | [**LoginSessionAcceptResponseInput**](LoginSessionAcceptResponseInput.md) | LoginSessionAcceptResponse  | [optional] |

### Return type

[**LoginSessionAcceptResponseOutput**](LoginSessionAcceptResponseOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers                                                                                                  |
| ----------- | ----------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Response Accepted | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError   | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **401**     | UnauthorizedError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login_session_for_idp**

> LoginSessionDto login_session_for_idp(login_session_for_idp_input=login_session_for_idp_input)

Create Login Session for IDP Login

Creates Login Session for IDP Login by using the Login Challenge

### Example

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.login_session_dto import LoginSessionDto
from affinidi_tdk_client_vpa.models.login_session_for_idp_input import LoginSessionForIDPInput
from affinidi_tdk_client_vpa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_vpa.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_vpa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_vpa.SessionApi(api_client)
    login_session_for_idp_input = affinidi_tdk_client_vpa.LoginSessionForIDPInput() # LoginSessionForIDPInput | LoginSessionForIdp (optional)

    try:
        # Create Login Session for IDP Login
        api_response = api_instance.login_session_for_idp(login_session_for_idp_input=login_session_for_idp_input)
        print("The response of SessionApi->login_session_for_idp:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SessionApi->login_session_for_idp: %s\n" % e)
```

### Parameters

| Name                            | Type                                                      | Description        | Notes      |
| ------------------------------- | --------------------------------------------------------- | ------------------ | ---------- |
| **login_session_for_idp_input** | [**LoginSessionForIDPInput**](LoginSessionForIDPInput.md) | LoginSessionForIdp | [optional] |

### Return type

[**LoginSessionDto**](LoginSessionDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers                                                                                                  |
| ----------- | --------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **201**     | Login Session Created | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError       | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **401**     | UnauthorizedError     | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError        | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login_session_reject_response**

> LoginSessionRejectResponseOutput login_session_reject_response(session_id, login_session_reject_response_input=login_session_reject_response_input)

Reject Response for Login Session

The user declines the request for access to their data

### Example

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.login_session_reject_response_input import LoginSessionRejectResponseInput
from affinidi_tdk_client_vpa.models.login_session_reject_response_output import LoginSessionRejectResponseOutput
from affinidi_tdk_client_vpa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_vpa.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_vpa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_vpa.SessionApi(api_client)
    session_id = 'session_id_example' # str | The id of the login session
    login_session_reject_response_input = affinidi_tdk_client_vpa.LoginSessionRejectResponseInput() # LoginSessionRejectResponseInput | LoginSessionRejectResponse (optional)

    try:
        # Reject Response for Login Session
        api_response = api_instance.login_session_reject_response(session_id, login_session_reject_response_input=login_session_reject_response_input)
        print("The response of SessionApi->login_session_reject_response:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SessionApi->login_session_reject_response: %s\n" % e)
```

### Parameters

| Name                                    | Type                                                                      | Description                 | Notes      |
| --------------------------------------- | ------------------------------------------------------------------------- | --------------------------- | ---------- |
| **session_id**                          | **str**                                                                   | The id of the login session |
| **login_session_reject_response_input** | [**LoginSessionRejectResponseInput**](LoginSessionRejectResponseInput.md) | LoginSessionRejectResponse  | [optional] |

### Return type

[**LoginSessionRejectResponseOutput**](LoginSessionRejectResponseOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers                                                                                                  |
| ----------- | ----------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Response Declined | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
