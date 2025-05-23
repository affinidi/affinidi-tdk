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

from affinidi_tdk_credential_issuance_client.models.batch_credential_response import BatchCredentialResponse  # noqa: E501

class TestBatchCredentialResponse(unittest.TestCase):
    """BatchCredentialResponse unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> BatchCredentialResponse:
        """Test BatchCredentialResponse
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `BatchCredentialResponse`
        """
        model = BatchCredentialResponse()  # noqa: E501
        if include_optional:
            return BatchCredentialResponse(
                credential_responses = [
                    affinidi_tdk_credential_issuance_client.models.batch_credential_response_credential_responses_inner.BatchCredentialResponse_credential_responses_inner(
                        credential = null, )
                    ],
                c_nonce = '',
                c_nonce_expires_in = 56
            )
        else:
            return BatchCredentialResponse(
                credential_responses = [
                    affinidi_tdk_credential_issuance_client.models.batch_credential_response_credential_responses_inner.BatchCredentialResponse_credential_responses_inner(
                        credential = null, )
                    ],
        )
        """

    def testBatchCredentialResponse(self):
        """Test BatchCredentialResponse"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
