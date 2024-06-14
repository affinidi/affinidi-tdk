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

from affinidi_tdk_iota_client.models.consent_dto import ConsentDto  # noqa: E501

class TestConsentDto(unittest.TestCase):
    """ConsentDto unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ConsentDto:
        """Test ConsentDto
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ConsentDto`
        """
        model = ConsentDto()  # noqa: E501
        if include_optional:
            return ConsentDto(
                project_id = '',
                id = '',
                user_id = '',
                vc_type = '',
                status = 'GIVEN',
                updated_at = ''
            )
        else:
            return ConsentDto(
                project_id = '',
                id = '',
                user_id = '',
                vc_type = '',
                status = 'GIVEN',
                updated_at = '',
        )
        """

    def testConsentDto(self):
        """Test ConsentDto"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()