# coding: utf-8

"""
    IotaService

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: 1.0.0
    Contact: info@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_iota_client.models.update_configuration_by_id_input import UpdateConfigurationByIdInput  # noqa: E501

class TestUpdateConfigurationByIdInput(unittest.TestCase):
    """UpdateConfigurationByIdInput unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> UpdateConfigurationByIdInput:
        """Test UpdateConfigurationByIdInput
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `UpdateConfigurationByIdInput`
        """
        model = UpdateConfigurationByIdInput()  # noqa: E501
        if include_optional:
            return UpdateConfigurationByIdInput(
                name = '',
                wallet_ari = '',
                iota_response_webhook_url = '',
                enable_verification = True,
                enable_consent_audit_log = True,
                token_max_age = 1.337,
                description = '',
                client_metadata = affinidi_tdk_iota_client.models.iota_configuration_dto_client_metadata.IotaConfigurationDtoClientMetadata(
                    name = '', 
                    origin = '', 
                    logo = '', ),
                mode = 'redirect',
                redirect_uris = [
                    ''
                    ],
                enable_idv_providers = True
            )
        else:
            return UpdateConfigurationByIdInput(
        )
        """

    def testUpdateConfigurationByIdInput(self):
        """Test UpdateConfigurationByIdInput"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
