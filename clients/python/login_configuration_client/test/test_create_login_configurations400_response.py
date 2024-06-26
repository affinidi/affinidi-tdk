# coding: utf-8

"""
    OidcVpAdapterBackend

    Affinidi OIDC VP Adapter Backend  An authorization token is necessary to create or obtain a project Access Token and access Admin APIs. Follow these step-by-step [instructions](https://lemmatree.atlassian.net/wiki/spaces/NETCORE/pages/2735317648020/ASA+Developer+Flow#Instructions-on-how-to-create-the-Project.)  to set up an authorization token 

    The version of the OpenAPI document: 1.0.0
    Contact: nucleus.team@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_login_configuration_client.models.create_login_configurations400_response import CreateLoginConfigurations400Response  # noqa: E501

class TestCreateLoginConfigurations400Response(unittest.TestCase):
    """CreateLoginConfigurations400Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> CreateLoginConfigurations400Response:
        """Test CreateLoginConfigurations400Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `CreateLoginConfigurations400Response`
        """
        model = CreateLoginConfigurations400Response()  # noqa: E501
        if include_optional:
            return CreateLoginConfigurations400Response(
                name = 'CreateProjectNetworkError',
                message = 'CreateProjectNetworkError',
                http_status_code = 400,
                trace_id = '',
                details = [
                    affinidi_tdk_login_configuration_client.models.invalid_parameter_error_details_inner.InvalidParameterError_details_inner(
                        issue = '', 
                        field = '', 
                        value = '', 
                        location = '', )
                    ]
            )
        else:
            return CreateLoginConfigurations400Response(
                name = 'CreateProjectNetworkError',
                message = 'CreateProjectNetworkError',
                http_status_code = 400,
                trace_id = '',
        )
        """

    def testCreateLoginConfigurations400Response(self):
        """Test CreateLoginConfigurations400Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
