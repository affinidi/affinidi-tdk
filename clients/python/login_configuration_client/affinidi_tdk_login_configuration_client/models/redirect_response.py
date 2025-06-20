# coding: utf-8

"""
    OidcVpAdapterBackend

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



from pydantic import BaseModel, Field, StrictStr, validator

class RedirectResponse(BaseModel):
    """
    Redirect Response  # noqa: E501
    """
    type: StrictStr = Field(default=..., description="type")
    to: StrictStr = Field(default=..., description="URL to redirect to")
    __properties = ["type", "to"]

    @validator('type')
    def type_validate_enum(cls, value):
        """Validates the enum"""
        if value not in ('REDIRECT_RESPONSE',):
            raise ValueError("must be one of enum values ('REDIRECT_RESPONSE')")
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
    def from_json(cls, json_str: str) -> RedirectResponse:
        """Create an instance of RedirectResponse from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> RedirectResponse:
        """Create an instance of RedirectResponse from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return RedirectResponse.parse_obj(obj)

        _obj = RedirectResponse.parse_obj({
            "type": obj.get("type"),
            "to": obj.get("to")
        })
        return _obj


