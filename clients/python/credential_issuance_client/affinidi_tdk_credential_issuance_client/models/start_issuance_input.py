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


from typing import List, Optional
from pydantic import BaseModel, Field, StrictStr, conlist, constr, validator
from affinidi_tdk_credential_issuance_client.models.start_issuance_input_data_inner import StartIssuanceInputDataInner

class StartIssuanceInput(BaseModel):
    """
    StartIssuanceInput
    """
    claim_mode: Optional[StrictStr] = Field(default=None, alias="claimMode", description="In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated).")
    holder_did: Optional[constr(strict=True)] = Field(default=None, alias="holderDid", description="Holder DID")
    issuance_id: Optional[StrictStr] = Field(default=None, alias="issuanceId", description="Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.")
    data: conlist(StartIssuanceInputDataInner) = Field(...)
    __properties = ["claimMode", "holderDid", "issuanceId", "data"]

    @validator('claim_mode')
    def claim_mode_validate_enum(cls, value):
        """Validates the enum"""
        if value is None:
            return value

        if value not in ('NORMAL', 'TX_CODE', 'FIXED_HOLDER',):
            raise ValueError("must be one of enum values ('NORMAL', 'TX_CODE', 'FIXED_HOLDER')")
        return value

    @validator('holder_did')
    def holder_did_validate_regular_expression(cls, value):
        """Validates the regular expression"""
        if value is None:
            return value

        if not re.match(r"^did:.+$", value):
            raise ValueError(r"must validate the regular expression /^did:.+$/")
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
    def from_json(cls, json_str: str) -> StartIssuanceInput:
        """Create an instance of StartIssuanceInput from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of each item in data (list)
        _items = []
        if self.data:
            for _item in self.data:
                if _item:
                    _items.append(_item.to_dict())
            _dict['data'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> StartIssuanceInput:
        """Create an instance of StartIssuanceInput from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return StartIssuanceInput.parse_obj(obj)

        _obj = StartIssuanceInput.parse_obj({
            "claim_mode": obj.get("claimMode"),
            "holder_did": obj.get("holderDid"),
            "issuance_id": obj.get("issuanceId"),
            "data": [StartIssuanceInputDataInner.from_dict(_item) for _item in obj.get("data")] if obj.get("data") is not None else None
        })
        return _obj


