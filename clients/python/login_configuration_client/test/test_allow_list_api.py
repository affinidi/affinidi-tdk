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

from affinidi_tdk_login_configuration_client.api.allow_list_api import AllowListApi  # noqa: E501


class TestAllowListApi(unittest.TestCase):
    """AllowListApi unit test stubs"""

    def setUp(self) -> None:
        self.api = AllowListApi()  # noqa: E501

    def tearDown(self) -> None:
        pass

    def test_allow_groups(self) -> None:
        """Test case for allow_groups

        """
        pass

    def test_disallow_groups(self) -> None:
        """Test case for disallow_groups

        """
        pass

    def test_list_allowed_groups(self) -> None:
        """Test case for list_allowed_groups

        """
        pass


if __name__ == '__main__':
    unittest.main()