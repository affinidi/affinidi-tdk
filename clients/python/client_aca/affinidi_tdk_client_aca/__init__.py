# coding: utf-8

# flake8: noqa

"""
    AivCloudApi

    Affinidi AivCloudApi Structure

    The version of the OpenAPI document: 1.0.0
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


__version__ = "1.0.0"

# import apis into sdk package

# import ApiClient
from affinidi_tdk_client_aca.api_response import ApiResponse
from affinidi_tdk_client_aca.api_client import ApiClient
from affinidi_tdk_client_aca.configuration import Configuration
from affinidi_tdk_client_aca.exceptions import OpenApiException
from affinidi_tdk_client_aca.exceptions import ApiTypeError
from affinidi_tdk_client_aca.exceptions import ApiValueError
from affinidi_tdk_client_aca.exceptions import ApiKeyError
from affinidi_tdk_client_aca.exceptions import ApiAttributeError
from affinidi_tdk_client_aca.exceptions import ApiException

# import models into sdk package
from affinidi_tdk_client_aca.models.credentials_dto import CredentialsDto
from affinidi_tdk_client_aca.models.data_request import DataRequest
from affinidi_tdk_client_aca.models.data_response import DataResponse
from affinidi_tdk_client_aca.models.missing_data_schemas_dto import MissingDataSchemasDto
from affinidi_tdk_client_aca.models.service_error_response import ServiceErrorResponse
from affinidi_tdk_client_aca.models.service_error_response_details_inner import ServiceErrorResponseDetailsInner