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
from affinidi_tdk_credential_issuance_client.models.credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code import CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode

class CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode(BaseModel):
    """
    Grant type for `pre-authorized_code` flow  # noqa: E501
    """
    pre_authorized_code: StrictStr = Field(default=..., alias="pre-authorized_code", description="pre authorized code to be exchanged with jwt token")
    tx_code: Optional[CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode] = None
    __properties = ["pre-authorized_code", "tx_code"]

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
    def from_json(cls, json_str: str) -> CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode:
        """Create an instance of CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of tx_code
        if self.tx_code:
            _dict['tx_code'] = self.tx_code.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode:
        """Create an instance of CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.parse_obj(obj)

        _obj = CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.parse_obj({
            "pre_authorized_code": obj.get("pre-authorized_code"),
            "tx_code": CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode.from_dict(obj.get("tx_code")) if obj.get("tx_code") is not None else None
        })
        return _obj


