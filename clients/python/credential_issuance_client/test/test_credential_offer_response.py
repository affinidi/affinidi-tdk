# coding: utf-8

"""
    CredentialIssuanceService

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: 1.0.0
    Contact: info@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_credential_issuance_client.models.credential_offer_response import CredentialOfferResponse  # noqa: E501

class TestCredentialOfferResponse(unittest.TestCase):
    """CredentialOfferResponse unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> CredentialOfferResponse:
        """Test CredentialOfferResponse
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `CredentialOfferResponse`
        """
        model = CredentialOfferResponse()  # noqa: E501
        if include_optional:
            return CredentialOfferResponse(
                credential_issuer = '',
                credential_configuration_ids = [
                    ''
                    ],
                grants = affinidi_tdk_credential_issuance_client.models.credential_offer_response_grants.CredentialOfferResponse_grants(
                    urn:ietf:params:oauth:grant_type:pre_authorized_code = affinidi_tdk_credential_issuance_client.models.credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code.CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code(
                        pre_authorized_code = '', 
                        tx_code = affinidi_tdk_credential_issuance_client.models.credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code.CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code(
                            length = 1.337, 
                            input_mode = '', 
                            description = '', ), ), )
            )
        else:
            return CredentialOfferResponse(
                credential_issuer = '',
                credential_configuration_ids = [
                    ''
                    ],
                grants = affinidi_tdk_credential_issuance_client.models.credential_offer_response_grants.CredentialOfferResponse_grants(
                    urn:ietf:params:oauth:grant_type:pre_authorized_code = affinidi_tdk_credential_issuance_client.models.credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code.CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code(
                        pre_authorized_code = '', 
                        tx_code = affinidi_tdk_credential_issuance_client.models.credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code.CredentialOfferResponse_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code(
                            length = 1.337, 
                            input_mode = '', 
                            description = '', ), ), ),
        )
        """

    def testCredentialOfferResponse(self):
        """Test CredentialOfferResponse"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
