# coding: utf-8

"""
    KnowYourCustomer

    Affinidi KnowYourCustomer Structure

    The version of the OpenAPI document: 1.0.0
    Contact: consumer-eng@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_client_kyc.models.cors_complete_otp_operation_ok import CorsCompleteOtpOperationOK  # noqa: E501

class TestCorsCompleteOtpOperationOK(unittest.TestCase):
    """CorsCompleteOtpOperationOK unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> CorsCompleteOtpOperationOK:
        """Test CorsCompleteOtpOperationOK
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `CorsCompleteOtpOperationOK`
        """
        model = CorsCompleteOtpOperationOK()  # noqa: E501
        if include_optional:
            return CorsCompleteOtpOperationOK(
                cors_complete_otp_operation_ok = ''
            )
        else:
            return CorsCompleteOtpOperationOK(
        )
        """

    def testCorsCompleteOtpOperationOK(self):
        """Test CorsCompleteOtpOperationOK"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()