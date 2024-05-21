# coding: utf-8

"""
    Iam

    Affinidi IAM

    The version of the OpenAPI document: 1.0.0
    Contact: nucleus.team@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json


from typing import List, Optional
from pydantic import BaseModel, Field, StrictStr, conlist
from affinidi_tdk_iam_client.models.policy_statement_dto import PolicyStatementDto

class PolicyDto(BaseModel):
    """
    PolicyDto
    """
    principal_id: Optional[StrictStr] = Field(None, alias="principalId")
    project_id: Optional[StrictStr] = Field(None, alias="projectId")
    version: StrictStr = Field(...)
    statement: conlist(PolicyStatementDto) = Field(...)
    __properties = ["principalId", "projectId", "version", "statement"]

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
    def from_json(cls, json_str: str) -> PolicyDto:
        """Create an instance of PolicyDto from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of each item in statement (list)
        _items = []
        if self.statement:
            for _item in self.statement:
                if _item:
                    _items.append(_item.to_dict())
            _dict['statement'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> PolicyDto:
        """Create an instance of PolicyDto from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return PolicyDto.parse_obj(obj)

        _obj = PolicyDto.parse_obj({
            "principal_id": obj.get("principalId"),
            "project_id": obj.get("projectId"),
            "version": obj.get("version"),
            "statement": [PolicyStatementDto.from_dict(_item) for _item in obj.get("statement")] if obj.get("statement") is not None else None
        })
        return _obj

