# coding: utf-8

"""
    KnowYourCustomer

    Affinidi KnowYourCustomer Structure

    The version of the OpenAPI document: 1.0.0
    Contact: consumer-eng@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json


from typing import Optional
from pydantic import BaseModel, Field, StrictStr

class CorsInitiateOtpOperationOK(BaseModel):
    """
    CorsInitiateOtpOperationOK
    """
    cors_initiate_otp_operation_ok: Optional[StrictStr] = Field(None, alias="corsInitiateOtpOperationOk")
    __properties = ["corsInitiateOtpOperationOk"]

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
    def from_json(cls, json_str: str) -> CorsInitiateOtpOperationOK:
        """Create an instance of CorsInitiateOtpOperationOK from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> CorsInitiateOtpOperationOK:
        """Create an instance of CorsInitiateOtpOperationOK from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return CorsInitiateOtpOperationOK.parse_obj(obj)

        _obj = CorsInitiateOtpOperationOK.parse_obj({
            "cors_initiate_otp_operation_ok": obj.get("corsInitiateOtpOperationOk")
        })
        return _obj

