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


from typing import List
from pydantic import BaseModel, Field, conlist
from affinidi_tdk_iam_client.models.project_dto import ProjectDto

class ProjectList(BaseModel):
    """
    ProjectList
    """
    projects: conlist(ProjectDto) = Field(...)
    __properties = ["projects"]

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
    def from_json(cls, json_str: str) -> ProjectList:
        """Create an instance of ProjectList from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of each item in projects (list)
        _items = []
        if self.projects:
            for _item in self.projects:
                if _item:
                    _items.append(_item.to_dict())
            _dict['projects'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> ProjectList:
        """Create an instance of ProjectList from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return ProjectList.parse_obj(obj)

        _obj = ProjectList.parse_obj({
            "projects": [ProjectDto.from_dict(_item) for _item in obj.get("projects")] if obj.get("projects") is not None else None
        })
        return _obj

