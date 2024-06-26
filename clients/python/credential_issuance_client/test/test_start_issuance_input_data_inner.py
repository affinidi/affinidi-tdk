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

from affinidi_tdk_credential_issuance_client.models.start_issuance_input_data_inner import StartIssuanceInputDataInner  # noqa: E501

class TestStartIssuanceInputDataInner(unittest.TestCase):
    """StartIssuanceInputDataInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> StartIssuanceInputDataInner:
        """Test StartIssuanceInputDataInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `StartIssuanceInputDataInner`
        """
        model = StartIssuanceInputDataInner()  # noqa: E501
        if include_optional:
            return StartIssuanceInputDataInner(
                credential_type_id = '',
                credential_data = { }
            )
        else:
            return StartIssuanceInputDataInner(
                credential_type_id = '',
                credential_data = { },
        )
        """

    def testStartIssuanceInputDataInner(self):
        """Test StartIssuanceInputDataInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
