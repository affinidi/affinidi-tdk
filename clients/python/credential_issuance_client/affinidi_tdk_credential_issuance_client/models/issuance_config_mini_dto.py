# coding: utf-8

"""
    CredentialIssuanceService

    Affinidi Credential Issuance Service Structure

    The version of the OpenAPI document: 1.0.0
    Contact: nucleus.team@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json


from typing import Any, Dict, Optional, Union
from pydantic import BaseModel, Field, StrictFloat, StrictInt, StrictStr, validator

class IssuanceConfigMiniDto(BaseModel):
    """
    IssuanceConfigMiniDto
    """
    id: StrictStr = Field(...)
    issuer_did: Optional[StrictStr] = Field(None, alias="issuerDid", description="Issuer DID")
    issuer_wallet_id: Optional[StrictStr] = Field(None, alias="issuerWalletId", description="Issuer Wallet id")
    credential_offer_duration: Optional[Union[StrictFloat, StrictInt]] = Field(None, alias="credentialOfferDuration", description="credential offer duration in second")
    c_nonce_duration: Optional[Union[StrictFloat, StrictInt]] = Field(None, alias="cNonceDuration", description="c_nonce duration in second")
    format: Optional[StrictStr] = Field(None, description="String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type")
    issuer_uri: Optional[StrictStr] = Field(None, alias="issuerUri", description="Issuer URI")
    issuer_metadata: Optional[Dict[str, Any]] = Field(None, alias="issuerMetadata", description="Issuer public information wallet may want to show to user during consent confirmation")
    version: Optional[Union[StrictFloat, StrictInt]] = None
    __properties = ["id", "issuerDid", "issuerWalletId", "credentialOfferDuration", "cNonceDuration", "format", "issuerUri", "issuerMetadata", "version"]

    @validator('format')
    def format_validate_enum(cls, value):
        """Validates the enum"""
        if value is None:
            return value

        if value not in ('ldp_vc'):
            raise ValueError("must be one of enum values ('ldp_vc')")
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
    def from_json(cls, json_str: str) -> IssuanceConfigMiniDto:
        """Create an instance of IssuanceConfigMiniDto from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> IssuanceConfigMiniDto:
        """Create an instance of IssuanceConfigMiniDto from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return IssuanceConfigMiniDto.parse_obj(obj)

        _obj = IssuanceConfigMiniDto.parse_obj({
            "id": obj.get("id"),
            "issuer_did": obj.get("issuerDid"),
            "issuer_wallet_id": obj.get("issuerWalletId"),
            "credential_offer_duration": obj.get("credentialOfferDuration"),
            "c_nonce_duration": obj.get("cNonceDuration"),
            "format": obj.get("format"),
            "issuer_uri": obj.get("issuerUri"),
            "issuer_metadata": obj.get("issuerMetadata"),
            "version": obj.get("version")
        })
        return _obj

