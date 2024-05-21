# coding: utf-8

"""
    VerificationService

    Affinidi VerificationService Structure

    The version of the OpenAPI document: 1.0.0
    Contact: nucleus.team@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json


from typing import List
from pydantic import BaseModel, Field, StrictStr, conlist, validator

class HolderSubject(BaseModel):
    """
    HolderSubject
    """
    field_id: conlist(StrictStr) = Field(...)
    directive: StrictStr = Field(...)
    __properties = ["field_id", "directive"]

    @validator('directive')
    def directive_validate_enum(cls, value):
        """Validates the enum"""
        if value not in ('required', 'preferred'):
            raise ValueError("must be one of enum values ('required', 'preferred')")
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
    def from_json(cls, json_str: str) -> HolderSubject:
        """Create an instance of HolderSubject from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> HolderSubject:
        """Create an instance of HolderSubject from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return HolderSubject.parse_obj(obj)

        _obj = HolderSubject.parse_obj({
            "field_id": obj.get("field_id"),
            "directive": obj.get("directive")
        })
        return _obj

