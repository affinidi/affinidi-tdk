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
from pydantic import BaseModel, Field, StrictStr
from affinidi_tdk_credential_issuance_client.models.credential_proof import CredentialProof

class CreateCredentialInput(BaseModel):
    """
    CreateCredentialInput
    """
    credential_identifier: Optional[StrictStr] = Field(default=None, description="It is a String that identifies a Credential that is being requested to be issued.")
    proof: CredentialProof = Field(...)
    __properties = ["credential_identifier", "proof"]

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
    def from_json(cls, json_str: str) -> CreateCredentialInput:
        """Create an instance of CreateCredentialInput from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of proof
        if self.proof:
            _dict['proof'] = self.proof.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> CreateCredentialInput:
        """Create an instance of CreateCredentialInput from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return CreateCredentialInput.parse_obj(obj)

        _obj = CreateCredentialInput.parse_obj({
            "credential_identifier": obj.get("credential_identifier"),
            "proof": CredentialProof.from_dict(obj.get("proof")) if obj.get("proof") is not None else None
        })
        return _obj


