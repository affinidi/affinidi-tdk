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

from affinidi_tdk_credential_issuance_client.models.revocation_forbidden_error import RevocationForbiddenError  # noqa: E501

class TestRevocationForbiddenError(unittest.TestCase):
    """RevocationForbiddenError unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RevocationForbiddenError:
        """Test RevocationForbiddenError
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RevocationForbiddenError`
        """
        model = RevocationForbiddenError()  # noqa: E501
        if include_optional:
            return RevocationForbiddenError(
                name = 'RevocationForbiddenError',
                message = 'Related VC has not been claimed yet',
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
            return RevocationForbiddenError(
                name = 'RevocationForbiddenError',
                message = 'Related VC has not been claimed yet',
                http_status_code = 400,
                trace_id = '',
        )
        """

    def testRevocationForbiddenError(self):
        """Test RevocationForbiddenError"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()