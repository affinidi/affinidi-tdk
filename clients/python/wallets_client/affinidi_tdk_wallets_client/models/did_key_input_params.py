# coding: utf-8

"""
    CloudWalletEssentials

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


from typing import Optional
from pydantic import BaseModel, Field, StrictStr, validator

class DidKeyInputParams(BaseModel):
    """
    Did key input params  # noqa: E501
    """
    name: Optional[StrictStr] = Field(default=None, description="The name of the wallet")
    description: Optional[StrictStr] = Field(default=None, description="The description of the wallet")
    did_method: Optional[StrictStr] = Field(default=None, alias="didMethod")
    __properties = ["name", "description", "didMethod"]

    @validator('did_method')
    def did_method_validate_enum(cls, value):
        """Validates the enum"""
        if value is None:
            return value

        if value not in ('key'):
            raise ValueError("must be one of enum values ('key')")
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
    def from_json(cls, json_str: str) -> DidKeyInputParams:
        """Create an instance of DidKeyInputParams from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> DidKeyInputParams:
        """Create an instance of DidKeyInputParams from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return DidKeyInputParams.parse_obj(obj)

        _obj = DidKeyInputParams.parse_obj({
            "name": obj.get("name"),
            "description": obj.get("description"),
            "did_method": obj.get("didMethod")
        })
        return _obj


