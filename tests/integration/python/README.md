# Python Integration Tests for Affinidi TDK

## Prerequisites

Ensure you have the following installed:

- **Python 3.9+**
- **[uv](https://github.com/astral-sh/uv)** (dependency manager, replaces pip)
  - Install via: `curl -Ls https://astral.sh/uv/install.sh | bash`

## Setup Instructions

Follow the steps below to install dependencies and run the test suite

### Environment Setup

Tests under `tests/integration/python/` rely on a shared `.env` file for configuration and credentials.

Copy the example environment configuration file and provide necessary credentials:

```bash
cp .env.example .env
```

Update only your PROJECT_ID ([link to docs how to create a project](https://docs.affinidi.com/docs/get-started/create-project/)) and PAT details (KEY_ID, PASSPHRASE, PRIVATE_KEY, TOKEN_ID - [link to docs how to create a PAT](https://docs.affinidi.com/dev-tools/affinidi-tdk/get-access-token/)) in your .env file.

Leave all other fields unchanged.


### 1. Install Dependencies

Install Python dependencies defined in test-requirements.in:

```bash
uv pip compile requirements.in -o requirements.lock

uv pip install -r requirements.lock --no-deps
```

### 2. Set Up TDK Clients

Run the setup script to configure required TDK clients:

```bash
chmod +x setup_clients.sh

./setup_clients.sh
```

### 3. Run Tests

Use the provided script to execute all integration tests:

```bash
chmod +x run_tests.sh

./run_tests.sh
```

This will invoke pytest and run all available test cases.

> ❗️ **Note:**
> The `chmod +x` commands only need to be run once to make the scripts executable. After that, you can run the scripts directly without `chmod`.
