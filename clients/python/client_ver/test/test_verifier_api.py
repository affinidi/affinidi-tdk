# coding: utf-8

"""
    VerificationService

    Affinidi VerificationService Structure

    The version of the OpenAPI document: 1.0.0
    Contact: nucleus.team@affinidi.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from affinidi_tdk_client_ver.api.verifier_api import VerifierApi  # noqa: E501


class TestVerifierApi(unittest.TestCase):
    """VerifierApi unit test stubs"""

    def setUp(self) -> None:
        self.api = VerifierApi()  # noqa: E501

    def tearDown(self) -> None:
        pass

    def test_build_credential_request(self) -> None:
        """Test case for build_credential_request

        Builds credential share request  # noqa: E501
        """
        pass

    def test_validate_jwt(self) -> None:
        """Test case for validate_jwt

        Validates JWT token  # noqa: E501
        """
        pass

    def test_verify_credential_share_response(self) -> None:
        """Test case for verify_credential_share_response

        Verifying share response token  # noqa: E501
        """
        pass

    def test_verify_credentials(self) -> None:
        """Test case for verify_credentials

        Verifying VC  # noqa: E501
        """
        pass

    def test_verify_presentation(self) -> None:
        """Test case for verify_presentation

        Verifying VP  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()