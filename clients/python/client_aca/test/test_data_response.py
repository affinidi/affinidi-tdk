# coding: utf-8

"""
    AivCloudApi

    Affinidi AivCloudApi Structure

    The version of the OpenAPI document: 1.0.0
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from affinidi_tdk_client_aca.models.data_response import DataResponse  # noqa: E501

class TestDataResponse(unittest.TestCase):
    """DataResponse unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> DataResponse:
        """Test DataResponse
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `DataResponse`
        """
        model = DataResponse()  # noqa: E501
        if include_optional:
            return DataResponse(
                missing_data_schemas = [
                    affinidi_tdk_client_aca.models.missing_data_schemas_dto.MissingDataSchemasDto(
                        schema_list = affinidi_tdk_client_aca.models.schema_list.schemaList(), )
                    ],
                credentials = [
                    affinidi_tdk_client_aca.models.credentials_dto.CredentialsDto(
                        signed_credential = affinidi_tdk_client_aca.models.signed_credential.signedCredential(), )
                    ]
            )
        else:
            return DataResponse(
                missing_data_schemas = [
                    affinidi_tdk_client_aca.models.missing_data_schemas_dto.MissingDataSchemasDto(
                        schema_list = affinidi_tdk_client_aca.models.schema_list.schemaList(), )
                    ],
                credentials = [
                    affinidi_tdk_client_aca.models.credentials_dto.CredentialsDto(
                        signed_credential = affinidi_tdk_client_aca.models.signed_credential.signedCredential(), )
                    ],
        )
        """

    def testDataResponse(self):
        """Test DataResponse"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()