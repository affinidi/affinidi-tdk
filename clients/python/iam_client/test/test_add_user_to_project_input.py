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

from affinidi_tdk_iam_client.models.add_user_to_project_input import AddUserToProjectInput  # noqa: E501

class TestAddUserToProjectInput(unittest.TestCase):
    """AddUserToProjectInput unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> AddUserToProjectInput:
        """Test AddUserToProjectInput
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `AddUserToProjectInput`
        """
        model = AddUserToProjectInput()  # noqa: E501
        if include_optional:
            return AddUserToProjectInput(
                principal_id = '',
                principal_type = ''
            )
        else:
            return AddUserToProjectInput(
                principal_id = '',
                principal_type = '',
        )
        """

    def testAddUserToProjectInput(self):
        """Test AddUserToProjectInput"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
