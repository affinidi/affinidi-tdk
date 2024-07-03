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


from typing import Optional
from pydantic import BaseModel, Field, StrictStr

class CorsIotOidc4vpcallbackOK(BaseModel):
    """
    CorsIotOidc4vpcallbackOK
    """
    cors_iot_oidc4vpcallback_ok: Optional[StrictStr] = Field(None, alias="corsIotOidc4vpcallbackOk")
    __properties = ["corsIotOidc4vpcallbackOk"]

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
    def from_json(cls, json_str: str) -> CorsIotOidc4vpcallbackOK:
        """Create an instance of CorsIotOidc4vpcallbackOK from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> CorsIotOidc4vpcallbackOK:
        """Create an instance of CorsIotOidc4vpcallbackOK from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return CorsIotOidc4vpcallbackOK.parse_obj(obj)

        _obj = CorsIotOidc4vpcallbackOK.parse_obj({
            "cors_iot_oidc4vpcallback_ok": obj.get("corsIotOidc4vpcallbackOk")
        })
        return _obj

