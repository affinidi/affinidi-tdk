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
from pydantic import BaseModel, Field, StrictBool, StrictStr, validator

class FlowDataStatusListsDetailsInner(BaseModel):
    """
    FlowDataStatusListsDetailsInner
    """
    status_list_purpose: StrictStr = Field(default=..., alias="statusListPurpose", description="Purpose of status list to which credential is added")
    status_list_id: StrictStr = Field(default=..., alias="statusListId", description="id of status list")
    status_list_index: StrictStr = Field(default=..., alias="statusListIndex", description="as usual it is a number, but all standards use a string")
    standard: StrictStr = Field(...)
    is_active: StrictBool = Field(default=..., alias="isActive", description="indicates status is true or not. Default false.")
    status_activation_reason: Optional[StrictStr] = Field(default=None, alias="statusActivationReason", description="text reasoning why the status is true (if true). Optional.")
    status_activated_at: Optional[StrictStr] = Field(default=None, alias="statusActivatedAt", description="ISO 8601 string of the modification date/time the status. Optional.")
    __properties = ["statusListPurpose", "statusListId", "statusListIndex", "standard", "isActive", "statusActivationReason", "statusActivatedAt"]

    @validator('status_list_purpose')
    def status_list_purpose_validate_enum(cls, value):
        """Validates the enum"""
        if value not in ('REVOKED',):
            raise ValueError("must be one of enum values ('REVOKED')")
        return value

    @validator('standard')
    def standard_validate_enum(cls, value):
        """Validates the enum"""
        if value not in ('RevocationList2020',):
            raise ValueError("must be one of enum values ('RevocationList2020')")
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
    def from_json(cls, json_str: str) -> FlowDataStatusListsDetailsInner:
        """Create an instance of FlowDataStatusListsDetailsInner from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> FlowDataStatusListsDetailsInner:
        """Create an instance of FlowDataStatusListsDetailsInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return FlowDataStatusListsDetailsInner.parse_obj(obj)

        _obj = FlowDataStatusListsDetailsInner.parse_obj({
            "status_list_purpose": obj.get("statusListPurpose"),
            "status_list_id": obj.get("statusListId"),
            "status_list_index": obj.get("statusListIndex"),
            "standard": obj.get("standard"),
            "is_active": obj.get("isActive"),
            "status_activation_reason": obj.get("statusActivationReason"),
            "status_activated_at": obj.get("statusActivatedAt")
        })
        return _obj


