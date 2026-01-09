import json
from dotenv import dotenv_values

_env = dotenv_values('../../.env')
missing_variables = set()

def required(name):
    missing_variables.add(name)
    return ''

def get_env_var(name, default=''):
    if name in _env:
        return _env[name]
    if default == 'required':
        return required(name)
    return default

# Load PAT env vars
token_id = get_env_var('TOKEN_ID', 'required')
key_id = get_env_var('KEY_ID', '')
passphrase = get_env_var('PASSPHRASE', '')
private_key = get_env_var('PRIVATE_KEY', 'required')
project_id = get_env_var('PROJECT_ID', 'required')

# Fixtures
verifiable_credential = json.loads(get_env_var('VERIFIABLE_CREDENTIAL', 'required'))
verifiable_presentation = json.loads(get_env_var('VERIFIABLE_PRESENTATION', 'required'))
credential_issuance_data = json.loads(get_env_var('CREDENTIAL_ISSUANCE_DATA', 'required'))
unsigned_credential_params = json.loads(get_env_var('UNSIGNED_CREDENTIAL_PARAMS', 'required'))

# V2 fixtures
unsigned_credential_v2 = json.loads(get_env_var('UNSIGNED_CREDENTIAL_V2', 'required'))
disclosure_frame_v2 = json.loads(get_env_var('DISCLOSURE_FRAME_V2', 'required'))
jwt_credential_v2 = get_env_var('JWT_CREDENTIAL_V2', 'required')

iota_configuration = json.loads(get_env_var('IOTA_CONFIGURATION', 'required'))
iota_presentation_submission = json.loads(get_env_var('IOTA_PRESENTATION_SUBMISSION', 'required'))
iota_presentation_definition = json.loads(get_env_var('IOTA_PRESENTATION_DEFINITION', 'required'))

if missing_variables:
    raise RuntimeError(f".env is missing variables: {', '.join(sorted(missing_variables))}")
