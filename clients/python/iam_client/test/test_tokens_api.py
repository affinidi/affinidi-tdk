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

from affinidi_tdk_iam_client.api.tokens_api import TokensApi  # noqa: E501


class TestTokensApi(unittest.TestCase):
    """TokensApi unit test stubs"""

    def setUp(self) -> None:
        self.api = TokensApi()

    def tearDown(self) -> None:
        self.api.api_client.close()

    def test_create_token(self) -> None:
        """Test case for create_token

        """
        pass

    def test_delete_token(self) -> None:
        """Test case for delete_token

        """
        pass

    def test_get_token(self) -> None:
        """Test case for get_token

        """
        pass

    def test_list_projects_of_token(self) -> None:
        """Test case for list_projects_of_token

        """
        pass

    def test_list_token(self) -> None:
        """Test case for list_token

        """
        pass

    def test_update_token(self) -> None:
        """Test case for update_token

        """
        pass


if __name__ == '__main__':
    unittest.main()
