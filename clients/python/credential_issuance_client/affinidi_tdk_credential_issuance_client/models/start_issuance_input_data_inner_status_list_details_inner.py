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


from typing import Optional
from pydantic import BaseModel, StrictStr, validator

class StartIssuanceInputDataInnerStatusListDetailsInner(BaseModel):
    """
    StartIssuanceInputDataInnerStatusListDetailsInner
    """
    purpose: Optional[StrictStr] = None
    standard: Optional[StrictStr] = None
    __properties = ["purpose", "standard"]

    @validator('purpose')
    def purpose_validate_enum(cls, value):
        """Validates the enum"""
        if value is None:
            return value

        if value not in ('REVOCABLE'):
            raise ValueError("must be one of enum values ('REVOCABLE')")
        return value

    @validator('standard')
    def standard_validate_enum(cls, value):
        """Validates the enum"""
        if value is None:
            return value

        if value not in ('RevocationList2020', 'BitstringStatusListV1'):
            raise ValueError("must be one of enum values ('RevocationList2020', 'BitstringStatusListV1')")
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
    def from_json(cls, json_str: str) -> StartIssuanceInputDataInnerStatusListDetailsInner:
        """Create an instance of StartIssuanceInputDataInnerStatusListDetailsInner from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> StartIssuanceInputDataInnerStatusListDetailsInner:
        """Create an instance of StartIssuanceInputDataInnerStatusListDetailsInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return StartIssuanceInputDataInnerStatusListDetailsInner.parse_obj(obj)

        _obj = StartIssuanceInputDataInnerStatusListDetailsInner.parse_obj({
            "purpose": obj.get("purpose"),
            "standard": obj.get("standard")
        })
        return _obj

