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

from affinidi_tdk_iota_client.models.callback_input import CallbackInput  # noqa: E501

class TestCallbackInput(unittest.TestCase):
    """CallbackInput unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> CallbackInput:
        """Test CallbackInput
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `CallbackInput`
        """
        model = CallbackInput()  # noqa: E501
        if include_optional:
            return CallbackInput(
                state = 'e-otgswwmejtcmosllnyulewqtzioitixmooyscsl-39333975650685139102691291732729478601482026:07d77006-3ebd-5468-bf54-d65309a8da56/a8235f8f-39aa-7588-9473-42a30c78029c',
                presentation_submission = '',
                vp_token = '',
                error = '',
                error_description = ''
            )
        else:
            return CallbackInput(
                state = 'e-otgswwmejtcmosllnyulewqtzioitixmooyscsl-39333975650685139102691291732729478601482026:07d77006-3ebd-5468-bf54-d65309a8da56/a8235f8f-39aa-7588-9473-42a30c78029c',
        )
        """

    def testCallbackInput(self):
        """Test CallbackInput"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
