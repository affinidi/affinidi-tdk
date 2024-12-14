# TODO => run virtual env:

# python -m venv ~/.venv
# source ~/.venv/bin/activate

# python -m pip install affinidi_tdk_auth_provider affinidi_tdk_credential_verification_client

# python ver.py

# TO FIX on backend => for @context
#    pydantic.error_wrappers.ValidationError: 1 validation error for VerifyCredentials
#    verify_credential_input -> verifiableCredentials -> 0 -> @context
#      value is not a valid dict (type=type_error.dict)

import json
from auth_provider_util import get_auth_provider
from affinidi_tdk_credential_verification_client import Configuration, ApiClient, DefaultApi
from affinidi_tdk_credential_verification_client.rest import ApiException

def configure_client(auth_provider) -> Configuration:
    configuration = Configuration()
    configuration.api_key['ProjectTokenAuth'] = ''  # Set a default token
    configuration.refresh_api_key_hook = lambda api_client: auth_provider.fetch_project_scoped_token()
    return configuration

def verify_credentials(api_instance: DefaultApi):
    credentials = {
      "verifiableCredentials": [{
        "@context": ["https://schema.affinidi.com/TestEmployeeCredentialPersonNestedV1-2.jsonld"],
        "id": "claimId:6f4532f45933189d",
        "type": ["VerifiableCredential", "TestEmployeeCredentialPersonNested"],
        "holder": {
          "id": "did:elem:EiC9C2LaJrhrgrmXHyamViL15bcAT7P4wBfWefTfGfPoEA"
        },
        "credentialSubject": {
          "data": {
            "name": "Jon Snow",
            "dateOfJoining": "2021-01-01",
            "otherDetails": {
              "githubLink": "https://github.com/jon-snow"
            }
          }
        },
        "issuanceDate": "2021-10-21T20:58:21.217Z",
        "issuer": "did:elem:EiD78M2fskp7WgStA915l6xdynkm2PGIn4XtJLF3HFitLw;elem:initial-state=eyJwcm90ZWN0ZWQiOiJleUp2Y0dWeVlYUnBiMjRpT2lKamNtVmhkR1VpTENKcmFXUWlPaUlqY0hKcGJXRnllU0lzSW1Gc1p5STZJa1ZUTWpVMlN5SjkiLCJwYXlsb2FkIjoiZXlKQVkyOXVkR1Y0ZENJNkltaDBkSEJ6T2k4dmR6TnBaQzV2Y21jdmMyVmpkWEpwZEhrdmRqSWlMQ0p3ZFdKc2FXTkxaWGtpT2x0N0ltbGtJam9pSTNCeWFXMWhjbmtpTENKMWMyRm5aU0k2SW5OcFoyNXBibWNpTENKMGVYQmxJam9pVTJWamNESTFObXN4Vm1WeWFXWnBZMkYwYVc5dVMyVjVNakF4T0NJc0luQjFZbXhwWTB0bGVVaGxlQ0k2SWpBeU5tVmlaV0l3TTJFME56WmlPREJpWlRBd09EaGpaakUwTXpjMk9UTTVOR1l3TlRrNFpqZzNOVFEyT0dWbU1UUXdOakExTWpJMllURmxabUk1TkRaa01pSjlMSHNpYVdRaU9pSWpjbVZqYjNabGNua2lMQ0oxYzJGblpTSTZJbkpsWTI5MlpYSjVJaXdpZEhsd1pTSTZJbE5sWTNBeU5UWnJNVlpsY21sbWFXTmhkR2x2Ymt0bGVUSXdNVGdpTENKd2RXSnNhV05MWlhsSVpYZ2lPaUl3TXpKa1pESXlZekJqWTJZMFlUQmtOalV5TldFellUYzBaREUwT1dNeVl6TTNaalF6T1RrelpEUTVaV0ppTmpObU1qSmlObVUxWTJSa1lqSmhNREEwTURFaWZWMHNJbUYxZEdobGJuUnBZMkYwYVc5dUlqcGJJaU53Y21sdFlYSjVJbDBzSW1GemMyVnlkR2x2YmsxbGRHaHZaQ0k2V3lJamNISnBiV0Z5ZVNKZGZRIiwic2lnbmF0dXJlIjoiTHJoRDZhUzZMZHM4MnkwcWZmWjlSX1laUXhzSFNuQWxIWFpwUUVGaGoteEhsRExPb2pvM1piR2dBMDJ3b0hRVkdTUVhxdmtMTVVveTJjMmFjMWo3c1EifQ",
        "proof": {
          "type": "EcdsaSecp256k1Signature2019",
          "created": "2021-10-21T20:59:04Z",
          "verificationMethod": "did:elem:EiD78M2fskp7WgStA915l6xdynkm2PGIn4XtJLF3HFitLw#primary",
          "proofPurpose": "assertionMethod",
          "jws": "eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..u6Cp6BLlSyVMVshDpiLzzcgeAAz7pSLJnFQaMSiBzlcbj93_zKZ3sermaHnlH_5qKwOsmMnRtx5VMDLqe8fSJw"
        }
      }]
    }

    try:
        api_response = api_instance.verify_credentials(credentials)
        data = json.loads(api_response.json())
        print("VER -> verify_credentials:", data)
    except ApiException as e:
        print(f"Error while verifying credentials: {e}")

def main():
    # Initialize AuthProvider and configuration
    auth_provider = get_auth_provider()
    configuration = configure_client(auth_provider)

    # Use the API client to verify credentials
    with ApiClient(configuration) as api_client:
        api_instance = DefaultApi(api_client)
        verify_credentials(api_instance)

if __name__ == "__main__":
    main()
