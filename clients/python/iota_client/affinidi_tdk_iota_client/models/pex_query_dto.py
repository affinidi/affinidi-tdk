# coding: utf-8

"""
    IotaService

    Affinidi IotaService Structure

    The version of the OpenAPI document: 1.0.0
    Contact: nucleus.team@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json



from pydantic import BaseModel, Field, StrictStr

class PexQueryDto(BaseModel):
    """
    PexQueryDto
    """
    ari: StrictStr = Field(...)
    query_id: StrictStr = Field(..., alias="queryId")
    name: StrictStr = Field(...)
    configuration_ari: StrictStr = Field(..., alias="configurationAri")
    vp_definition: StrictStr = Field(..., alias="vpDefinition", description="VP definition in JSON stringify format")
    __properties = ["ari", "queryId", "name", "configurationAri", "vpDefinition"]

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
    def from_json(cls, json_str: str) -> PexQueryDto:
        """Create an instance of PexQueryDto from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> PexQueryDto:
        """Create an instance of PexQueryDto from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return PexQueryDto.parse_obj(obj)

        _obj = PexQueryDto.parse_obj({
            "ari": obj.get("ari"),
            "query_id": obj.get("queryId"),
            "name": obj.get("name"),
            "configuration_ari": obj.get("configurationAri"),
            "vp_definition": obj.get("vpDefinition")
        })
        return _obj

