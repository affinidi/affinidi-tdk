from dotenv import dotenv_values
from affinidi_tdk_auth_provider import AuthProvider

# Map environment variable keys to expected keys
MAPPING = {
    'KEY_ID': 'keyId',
    'PASSPHRASE': 'passphrase',
    'TOKEN_ID': 'tokenId',
    'PROJECT_ID': 'projectId',
    'PRIVATE_KEY': 'privateKey',
    # the below values for Affinidi Iota Framework testing
    'IOTA_CONFIG_ID': 'configurationId',
    'QUERY_ID': 'queryId',
    'DID': 'did',
    'REDIRECT_URI': 'redirectUri',
    'PRESENTATION_SUBMISSION': 'presentation_submission',
    'VP_TOKEN': 'vp_token'
}

def get_auth_provider(env_file_path: str = '../../.env') -> AuthProvider:
    # Load and map environment variables
    env_vars = dotenv_values(env_file_path)
    stats = {MAPPING[key]: env_vars[key] for key in env_vars if key in MAPPING}

    # Validate required variables
    missing_keys = [key for key in MAPPING.values() if key not in stats]
    if missing_keys:
        raise ValueError(f"Missing required environment variables: {missing_keys}")

    # Return AuthProvider instance
    return AuthProvider(stats)
