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


from typing import List
from pydantic import BaseModel, Field, StrictStr, conlist
from affinidi_tdk_credential_issuance_client.models.credential_offer_response_grants import CredentialOfferResponseGrants

class CredentialOfferResponse(BaseModel):
    """
    CredentialOfferResponse
    """
    credential_issuer: StrictStr = Field(default=..., description="The URL of the Credential Issuer")
    credential_configuration_ids: conlist(StrictStr) = Field(default=..., description="Array of unique strings that each identify one of the keys in the name/value pairs stored in the credentialSupported")
    grants: CredentialOfferResponseGrants = Field(...)
    __properties = ["credential_issuer", "credential_configuration_ids", "grants"]

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
    def from_json(cls, json_str: str) -> CredentialOfferResponse:
        """Create an instance of CredentialOfferResponse from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of grants
        if self.grants:
            _dict['grants'] = self.grants.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> CredentialOfferResponse:
        """Create an instance of CredentialOfferResponse from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return CredentialOfferResponse.parse_obj(obj)

        _obj = CredentialOfferResponse.parse_obj({
            "credential_issuer": obj.get("credential_issuer"),
            "credential_configuration_ids": obj.get("credential_configuration_ids"),
            "grants": CredentialOfferResponseGrants.from_dict(obj.get("grants")) if obj.get("grants") is not None else None
        })
        return _obj


