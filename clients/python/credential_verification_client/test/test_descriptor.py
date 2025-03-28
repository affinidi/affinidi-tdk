# coding: utf-8

"""
    VerificationService

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: 1.0.0
    Contact: info@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_credential_verification_client.models.descriptor import Descriptor  # noqa: E501

class TestDescriptor(unittest.TestCase):
    """Descriptor unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> Descriptor:
        """Test Descriptor
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `Descriptor`
        """
        model = Descriptor()  # noqa: E501
        if include_optional:
            return Descriptor(
                id = '',
                path = '',
                path_nested = affinidi_tdk_credential_verification_client.models.nested_descriptor.NestedDescriptor(
                    id = '', 
                    path = '', 
                    format = '', ),
                format = ''
            )
        else:
            return Descriptor(
                id = '',
                path = '',
                format = '',
        )
        """

    def testDescriptor(self):
        """Test Descriptor"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
