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

from affinidi_tdk_vault_data_manager_client.models.cors_delete_node_ok import CorsDeleteNodeOK  # noqa: E501

class TestCorsDeleteNodeOK(unittest.TestCase):
    """CorsDeleteNodeOK unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> CorsDeleteNodeOK:
        """Test CorsDeleteNodeOK
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `CorsDeleteNodeOK`
        """
        model = CorsDeleteNodeOK()  # noqa: E501
        if include_optional:
            return CorsDeleteNodeOK(
                cors_delete_node_ok = ''
            )
        else:
            return CorsDeleteNodeOK(
        )
        """

    def testCorsDeleteNodeOK(self):
        """Test CorsDeleteNodeOK"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
