# coding: utf-8

"""
    IotaService

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: 1.0.0
    Contact: info@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json


from typing import Optional, Union
from pydantic import BaseModel, Field, StrictFloat, StrictInt, StrictStr, validator

class InitiateDataSharingRequestInput(BaseModel):
    """
    InitiateDataSharingRequestInput
    """
    query_id: StrictStr = Field(default=..., alias="queryId", description="The ID of the query.")
    correlation_id: StrictStr = Field(default=..., alias="correlationId", description="A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.")
    token_max_age: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, alias="tokenMaxAge", description="This is the lifetime of the signed request token during the data-sharing flow.")
    nonce: StrictStr = Field(default=..., description="A randomly generated value that is added in the request and response to prevent replay attacks.")
    redirect_uri: StrictStr = Field(default=..., alias="redirectUri", description="List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.")
    configuration_id: StrictStr = Field(default=..., alias="configurationId", description="ID of the Affinidi Iota Framework configuration.")
    mode: StrictStr = Field(default=..., description="Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.")
    __properties = ["queryId", "correlationId", "tokenMaxAge", "nonce", "redirectUri", "configurationId", "mode"]

    @validator('mode')
    def mode_validate_enum(cls, value):
        """Validates the enum"""
        if value not in ('redirect', 'websocket',):
            raise ValueError("must be one of enum values ('redirect', 'websocket')")
        return value

    class Config:
        """Pydantic configuration"""
        allow_population_by_field_name = True
        validate_assignment = True

    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.dict(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> InitiateDataSharingRequestInput:
        """Create an instance of InitiateDataSharingRequestInput from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> InitiateDataSharingRequestInput:
        """Create an instance of InitiateDataSharingRequestInput from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return InitiateDataSharingRequestInput.parse_obj(obj)

        _obj = InitiateDataSharingRequestInput.parse_obj({
            "query_id": obj.get("queryId"),
            "correlation_id": obj.get("correlationId"),
            "token_max_age": obj.get("tokenMaxAge"),
            "nonce": obj.get("nonce"),
            "redirect_uri": obj.get("redirectUri"),
            "configuration_id": obj.get("configurationId"),
            "mode": obj.get("mode")
        })
        return _obj


