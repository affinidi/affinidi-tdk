# coding: utf-8

"""
    CredentialIssuanceService

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: 1.0.0
    Contact: info@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_credential_issuance_client.models.credential_response import CredentialResponse  # noqa: E501

class TestCredentialResponse(unittest.TestCase):
    """CredentialResponse unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> CredentialResponse:
        """Test CredentialResponse
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `CredentialResponse`
        """
        model = CredentialResponse()  # noqa: E501
        if include_optional:
            return CredentialResponse(
                credential = None,
                c_nonce = '',
                c_nonce_expires_in = 1.337,
                transaction_id = ''
            )
        else:
            return CredentialResponse(
                credential = None,
                c_nonce = '',
                c_nonce_expires_in = 1.337,
                transaction_id = '',
        )
        """

    def testCredentialResponse(self):
        """Test CredentialResponse"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
