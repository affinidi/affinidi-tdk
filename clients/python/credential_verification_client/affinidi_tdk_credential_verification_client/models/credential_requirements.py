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
from pydantic import BaseModel, Field, StrictStr, conlist
from affinidi_tdk_credential_verification_client.models.credential_requirements_constraints import CredentialRequirementsConstraints

class CredentialRequirements(BaseModel):
    """
    Requirements of the VC  # noqa: E501
    """
    type: conlist(StrictStr) = Field(default=..., description="Type list of the VC requirements")
    constraints: Optional[CredentialRequirementsConstraints] = None
    __properties = ["type", "constraints"]

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
    def from_json(cls, json_str: str) -> CredentialRequirements:
        """Create an instance of CredentialRequirements from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of constraints
        if self.constraints:
            _dict['constraints'] = self.constraints.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> CredentialRequirements:
        """Create an instance of CredentialRequirements from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return CredentialRequirements.parse_obj(obj)

        _obj = CredentialRequirements.parse_obj({
            "type": obj.get("type"),
            "constraints": CredentialRequirementsConstraints.from_dict(obj.get("constraints")) if obj.get("constraints") is not None else None
        })
        return _obj


