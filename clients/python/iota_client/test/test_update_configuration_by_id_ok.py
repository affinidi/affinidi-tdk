# coding: utf-8

"""
    IotaService

    Affinidi IotaService Structure

    The version of the OpenAPI document: 1.0.0
    Contact: nucleus.team@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_iota_client.models.update_configuration_by_id_ok import UpdateConfigurationByIdOK  # noqa: E501

class TestUpdateConfigurationByIdOK(unittest.TestCase):
    """UpdateConfigurationByIdOK unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> UpdateConfigurationByIdOK:
        """Test UpdateConfigurationByIdOK
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `UpdateConfigurationByIdOK`
        """
        model = UpdateConfigurationByIdOK()  # noqa: E501
        if include_optional:
            return UpdateConfigurationByIdOK(
                update_configuration_by_id_ok = ''
            )
        else:
            return UpdateConfigurationByIdOK(
        )
        """

    def testUpdateConfigurationByIdOK(self):
        """Test UpdateConfigurationByIdOK"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()