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
from pydantic import BaseModel, Field, StrictStr, conlist
from affinidi_tdk_credential_issuance_client.models.flow_data import FlowData

class ListIssuanceRecordResponse(BaseModel):
    """
    list of issuance data records  # noqa: E501
    """
    flow_data: Optional[conlist(FlowData)] = Field(default=None, alias="flowData")
    last_evaluated_key: Optional[StrictStr] = Field(default=None, alias="lastEvaluatedKey")
    __properties = ["flowData", "lastEvaluatedKey"]

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
    def from_json(cls, json_str: str) -> ListIssuanceRecordResponse:
        """Create an instance of ListIssuanceRecordResponse from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of each item in flow_data (list)
        _items = []
        if self.flow_data:
            for _item in self.flow_data:
                if _item:
                    _items.append(_item.to_dict())
            _dict['flowData'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> ListIssuanceRecordResponse:
        """Create an instance of ListIssuanceRecordResponse from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return ListIssuanceRecordResponse.parse_obj(obj)

        _obj = ListIssuanceRecordResponse.parse_obj({
            "flow_data": [FlowData.from_dict(_item) for _item in obj.get("flowData")] if obj.get("flowData") is not None else None,
            "last_evaluated_key": obj.get("lastEvaluatedKey")
        })
        return _obj


