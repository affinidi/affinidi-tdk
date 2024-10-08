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
from pydantic import BaseModel, Field, conlist
from affinidi_tdk_credential_issuance_client.models.list_issuance_response_issuances_inner import ListIssuanceResponseIssuancesInner

class ListIssuanceResponse(BaseModel):
    """
    ListIssuanceResponse
    """
    issuances: conlist(ListIssuanceResponseIssuancesInner) = Field(default=..., description="The list of all issuances for the Project")
    __properties = ["issuances"]

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
    def from_json(cls, json_str: str) -> ListIssuanceResponse:
        """Create an instance of ListIssuanceResponse from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of each item in issuances (list)
        _items = []
        if self.issuances:
            for _item in self.issuances:
                if _item:
                    _items.append(_item.to_dict())
            _dict['issuances'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> ListIssuanceResponse:
        """Create an instance of ListIssuanceResponse from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return ListIssuanceResponse.parse_obj(obj)

        _obj = ListIssuanceResponse.parse_obj({
            "issuances": [ListIssuanceResponseIssuancesInner.from_dict(_item) for _item in obj.get("issuances")] if obj.get("issuances") is not None else None
        })
        return _obj


