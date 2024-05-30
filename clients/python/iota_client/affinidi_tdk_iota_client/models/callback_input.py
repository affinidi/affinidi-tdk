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
from pydantic import BaseModel, Field, StrictStr, constr, validator

class CallbackInput(BaseModel):
    """
    CallbackInput
    """
    state: constr(strict=True) = Field(..., description="A string that must be a valid UUID (version 1-5).")
    presentation_submission: Optional[StrictStr] = Field(None, description="A string that must be a valid JSON object. The structure of presentation submission should follow OID4VP standard.")
    vp_token: Optional[StrictStr] = Field(None, description="A string that must be a valid JSON object. Ensure to escape special characters properly..")
    error: Optional[StrictStr] = Field(None, description="The error should follow the OAuth2 error format (e.g. invalid_request, login_required). Defaults to access_denied")
    error_description: Optional[StrictStr] = Field(None, description="Description of the error in a human readable format")
    __properties = ["state", "presentation_submission", "vp_token", "error", "error_description"]

    @validator('state')
    def state_validate_regular_expression(cls, value):
        """Validates the regular expression"""
        if not re.match(r"^[a-z]+-[a-z]+-\d+:[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}\/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$", value):
            raise ValueError(r"must validate the regular expression /^[a-z]+-[a-z]+-\d+:[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}\/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$/")
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
    def from_json(cls, json_str: str) -> CallbackInput:
        """Create an instance of CallbackInput from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> CallbackInput:
        """Create an instance of CallbackInput from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return CallbackInput.parse_obj(obj)

        _obj = CallbackInput.parse_obj({
            "state": obj.get("state"),
            "presentation_submission": obj.get("presentation_submission"),
            "vp_token": obj.get("vp_token"),
            "error": obj.get("error"),
            "error_description": obj.get("error_description")
        })
        return _obj

