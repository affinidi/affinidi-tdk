# coding: utf-8

"""
    VerificationService

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


from typing import Any, Dict, List, Optional
from pydantic import BaseModel, Field, StrictStr, conlist
from affinidi_tdk_credential_verification_client.models.presentation_submission import PresentationSubmission
from affinidi_tdk_credential_verification_client.models.w3c_credential import W3cCredential
from affinidi_tdk_credential_verification_client.models.w3c_presentation_context import W3cPresentationContext

class W3cPresentation(BaseModel):
    """
    W3cPresentation
    """
    context: W3cPresentationContext = Field(default=..., alias="@context")
    id: Optional[StrictStr] = None
    type: conlist(StrictStr) = Field(...)
    holder: Dict[str, Any] = Field(...)
    verifiable_credential: conlist(W3cCredential) = Field(default=..., alias="verifiableCredential")
    presentation_submission: Optional[PresentationSubmission] = None
    proof: Dict[str, Any] = Field(...)
    __properties = ["@context", "id", "type", "holder", "verifiableCredential", "presentation_submission", "proof"]

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
    def from_json(cls, json_str: str) -> W3cPresentation:
        """Create an instance of W3cPresentation from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of context
        if self.context:
            _dict['@context'] = self.context.to_dict()
        # override the default output from pydantic by calling `to_dict()` of each item in verifiable_credential (list)
        _items = []
        if self.verifiable_credential:
            for _item in self.verifiable_credential:
                if _item:
                    _items.append(_item.to_dict())
            _dict['verifiableCredential'] = _items
        # override the default output from pydantic by calling `to_dict()` of presentation_submission
        if self.presentation_submission:
            _dict['presentation_submission'] = self.presentation_submission.to_dict()
        # set to None if id (nullable) is None
        # and __fields_set__ contains the field
        if self.id is None and "id" in self.__fields_set__:
            _dict['id'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> W3cPresentation:
        """Create an instance of W3cPresentation from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return W3cPresentation.parse_obj(obj)

        _obj = W3cPresentation.parse_obj({
            "context": W3cPresentationContext.from_dict(obj.get("@context")) if obj.get("@context") is not None else None,
            "id": obj.get("id"),
            "type": obj.get("type"),
            "holder": obj.get("holder"),
            "verifiable_credential": [W3cCredential.from_dict(_item) for _item in obj.get("verifiableCredential")] if obj.get("verifiableCredential") is not None else None,
            "presentation_submission": PresentationSubmission.from_dict(obj.get("presentation_submission")) if obj.get("presentation_submission") is not None else None,
            "proof": obj.get("proof")
        })
        return _obj


