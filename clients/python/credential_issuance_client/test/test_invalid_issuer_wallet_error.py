# coding: utf-8

"""
    CredentialIssuanceService

    Affinidi Credential Issuance Service Structure

    The version of the OpenAPI document: 1.0.0
    Contact: nucleus.team@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_credential_issuance_client.models.invalid_issuer_wallet_error import InvalidIssuerWalletError  # noqa: E501

class TestInvalidIssuerWalletError(unittest.TestCase):
    """InvalidIssuerWalletError unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> InvalidIssuerWalletError:
        """Test InvalidIssuerWalletError
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `InvalidIssuerWalletError`
        """
        model = InvalidIssuerWalletError()  # noqa: E501
        if include_optional:
            return InvalidIssuerWalletError(
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
            return InvalidIssuerWalletError(
                name = 'InvalidIssuerWalletError',
                message = 'issuer wallet id is invalid',
                http_status_code = 400,
                trace_id = '',
        )
        """

    def testInvalidIssuerWalletError(self):
        """Test InvalidIssuerWalletError"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()