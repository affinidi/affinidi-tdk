# coding: utf-8

"""
    CredentialIssuanceService

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


from typing import List
from pydantic import BaseModel, Field, conlist
from affinidi_tdk_credential_issuance_client.models.issuance_config_mini_dto import IssuanceConfigMiniDto

class IssuanceConfigListResponse(BaseModel):
    """
    IssuanceConfigListResponse
    """
    configurations: conlist(IssuanceConfigMiniDto) = Field(...)
    __properties = ["configurations"]

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
    def from_json(cls, json_str: str) -> IssuanceConfigListResponse:
        """Create an instance of IssuanceConfigListResponse from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of each item in configurations (list)
        _items = []
        if self.configurations:
            for _item in self.configurations:
                if _item:
                    _items.append(_item.to_dict())
            _dict['configurations'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> IssuanceConfigListResponse:
        """Create an instance of IssuanceConfigListResponse from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return IssuanceConfigListResponse.parse_obj(obj)

        _obj = IssuanceConfigListResponse.parse_obj({
            "configurations": [IssuanceConfigMiniDto.from_dict(_item) for _item in obj.get("configurations")] if obj.get("configurations") is not None else None
        })
        return _obj


