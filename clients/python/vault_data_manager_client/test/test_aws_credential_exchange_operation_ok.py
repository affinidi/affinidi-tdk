# coding: utf-8

"""
    VaultFileSystem

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: 1.0.0
    Contact: info@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_vault_data_manager_client.models.aws_credential_exchange_operation_ok import AwsCredentialExchangeOperationOK  # noqa: E501

class TestAwsCredentialExchangeOperationOK(unittest.TestCase):
    """AwsCredentialExchangeOperationOK unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> AwsCredentialExchangeOperationOK:
        """Test AwsCredentialExchangeOperationOK
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `AwsCredentialExchangeOperationOK`
        """
        model = AwsCredentialExchangeOperationOK()  # noqa: E501
        if include_optional:
            return AwsCredentialExchangeOperationOK(
                token = '',
                identity_id = ''
            )
        else:
            return AwsCredentialExchangeOperationOK(
                token = '',
                identity_id = '',
        )
        """

    def testAwsCredentialExchangeOperationOK(self):
        """Test AwsCredentialExchangeOperationOK"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
