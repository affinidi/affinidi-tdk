# coding: utf-8

"""
    CredentialIssuanceService

    Affinidi Credential Issuance Service Structure

    The version of the OpenAPI document: 1.0.0
    Contact: nucleus.team@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_credential_issuance_client.models.well_known_open_id_credential_issuer_response import WellKnownOpenIdCredentialIssuerResponse  # noqa: E501

class TestWellKnownOpenIdCredentialIssuerResponse(unittest.TestCase):
    """WellKnownOpenIdCredentialIssuerResponse unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> WellKnownOpenIdCredentialIssuerResponse:
        """Test WellKnownOpenIdCredentialIssuerResponse
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `WellKnownOpenIdCredentialIssuerResponse`
        """
        model = WellKnownOpenIdCredentialIssuerResponse()  # noqa: E501
        if include_optional:
            return WellKnownOpenIdCredentialIssuerResponse(
                authorization_endpoint = '',
                credential_endpoint = '',
                credential_issuer = '',
                credentials_supported = [
                    affinidi_tdk_credential_issuance_client.models.create_issuance_config_input_credential_supported_inner.CreateIssuanceConfigInput_credentialSupported_inner(
                        credential_type_id = '', 
                        json_schema_url = '', 
                        json_ld_context_url = '', )
                    ],
                deferred_credential_endpoint = '',
                grant_types_supported = [
                    'authorization_code'
                    ],
                jwks_uri = '',
                scopes_supported = [
                    'openid'
                    ],
                token_endpoint = '',
                token_endpoint_auth_methods_supported = [
                    'client_secret_post'
                    ]
            )
        else:
            return WellKnownOpenIdCredentialIssuerResponse(
        )
        """

    def testWellKnownOpenIdCredentialIssuerResponse(self):
        """Test WellKnownOpenIdCredentialIssuerResponse"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()