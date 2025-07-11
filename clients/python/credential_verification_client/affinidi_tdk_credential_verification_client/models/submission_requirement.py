# coding: utf-8

"""
    VerificationService

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


from typing import List, Optional
from pydantic import BaseModel, Field, StrictInt, StrictStr, conlist, validator

class SubmissionRequirement(BaseModel):
    """
    SubmissionRequirement
    """
    name: Optional[StrictStr] = None
    purpose: Optional[StrictStr] = None
    rule: StrictStr = Field(...)
    count: Optional[StrictInt] = None
    min: Optional[StrictInt] = None
    max: Optional[StrictInt] = None
    var_from: Optional[StrictStr] = Field(default=None, alias="from")
    from_nested: Optional[conlist(SubmissionRequirement)] = None
    __properties = ["name", "purpose", "rule", "count", "min", "max", "from", "from_nested"]

    @validator('rule')
    def rule_validate_enum(cls, value):
        """Validates the enum"""
        if value not in ('all', 'pick',):
            raise ValueError("must be one of enum values ('all', 'pick')")
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
    def from_json(cls, json_str: str) -> SubmissionRequirement:
        """Create an instance of SubmissionRequirement from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of each item in from_nested (list)
        _items = []
        if self.from_nested:
            for _item in self.from_nested:
                if _item:
                    _items.append(_item.to_dict())
            _dict['from_nested'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> SubmissionRequirement:
        """Create an instance of SubmissionRequirement from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return SubmissionRequirement.parse_obj(obj)

        _obj = SubmissionRequirement.parse_obj({
            "name": obj.get("name"),
            "purpose": obj.get("purpose"),
            "rule": obj.get("rule"),
            "count": obj.get("count"),
            "min": obj.get("min"),
            "max": obj.get("max"),
            "var_from": obj.get("from"),
            "from_nested": [SubmissionRequirement.from_dict(_item) for _item in obj.get("from_nested")] if obj.get("from_nested") is not None else None
        })
        return _obj

SubmissionRequirement.update_forward_refs()

