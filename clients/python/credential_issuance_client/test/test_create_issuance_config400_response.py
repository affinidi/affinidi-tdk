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

from affinidi_tdk_credential_issuance_client.models.create_issuance_config400_response import CreateIssuanceConfig400Response  # noqa: E501

class TestCreateIssuanceConfig400Response(unittest.TestCase):
    """CreateIssuanceConfig400Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> CreateIssuanceConfig400Response:
        """Test CreateIssuanceConfig400Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `CreateIssuanceConfig400Response`
        """
        model = CreateIssuanceConfig400Response()  # noqa: E501
        if include_optional:
            return CreateIssuanceConfig400Response(
                name = 'InvalidIssuerWalletError',
                message = 'issuer wallet id is invalid',
                http_status_code = 400,
                trace_id = '',
                details = [
                    affinidi_tdk_credential_issuance_client.models.action_forbidden_error_details_inner.ActionForbiddenError_details_inner(
                        issue = '', 
                        field = '', 
                        value = '', 
                        location = '', )
                    ]
            )
        else:
            return CreateIssuanceConfig400Response(
                name = 'InvalidIssuerWalletError',
                message = 'issuer wallet id is invalid',
                http_status_code = 400,
                trace_id = '',
        )
        """

    def testCreateIssuanceConfig400Response(self):
        """Test CreateIssuanceConfig400Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
