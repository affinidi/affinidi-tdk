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



from pydantic import BaseModel, Field, StrictStr

class LoginSessionForIDPInput(BaseModel):
    """
    Input for Creating a Login Session  # noqa: E501
    """
    login_challenge: StrictStr = Field(default=..., alias="loginChallenge", description="IDP Login Challenge to Associate the Session with")
    client_id: StrictStr = Field(default=..., alias="clientId", description="IDP client id to Associate the Session with")
    __properties = ["loginChallenge", "clientId"]

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
    def from_json(cls, json_str: str) -> LoginSessionForIDPInput:
        """Create an instance of LoginSessionForIDPInput from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> LoginSessionForIDPInput:
        """Create an instance of LoginSessionForIDPInput from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return LoginSessionForIDPInput.parse_obj(obj)

        _obj = LoginSessionForIDPInput.parse_obj({
            "login_challenge": obj.get("loginChallenge"),
            "client_id": obj.get("clientId")
        })
        return _obj


