import string
import secrets
from urllib.parse import urlparse

def extract_revocation_status_id(url: str) -> str | None:
    parts = urlparse(url)
    if not parts.path:
        return None
    segments = parts.path.strip('/').split('/')
    return segments[-1] if segments else None

def generate_random_string():
    random_name = ''.join(secrets.choice(string.ascii_lowercase) for _ in range(12))
    return random_name
