# coding: utf-8

"""
    Iam

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: 1.0.0
    Contact: info@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_iam_client.models.unexpected_error import UnexpectedError  # noqa: E501

class TestUnexpectedError(unittest.TestCase):
    """UnexpectedError unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> UnexpectedError:
        """Test UnexpectedError
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `UnexpectedError`
        """
        model = UnexpectedError()  # noqa: E501
        if include_optional:
            return UnexpectedError(
                name = 'UnexpectedError',
                message = 'Unexpected Error Occurred.',
                http_status_code = 500,
                trace_id = '',
                details = [
                    affinidi_tdk_iam_client.models.service_error_response_details_inner.ServiceErrorResponse_details_inner(
                        issue = '', 
                        field = '', 
                        value = '', 
                        location = '', )
                    ]
            )
        else:
            return UnexpectedError(
                name = 'UnexpectedError',
                message = 'Unexpected Error Occurred.',
                http_status_code = 500,
                trace_id = '',
        )
        """

    def testUnexpectedError(self):
        """Test UnexpectedError"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
