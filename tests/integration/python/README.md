# Python Integration Tests for Affinidi TDK

## Prerequisites

Ensure you have the following installed:

- **Python 3.9+**
- **pip** (Python package manager)
- **virtualenv** (recommended)

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


### 1. Create and Activate Virtual Environment

Isolating dependencies using a virtual environment:

```bash
python -m venv ~/.venv
source ~/.venv/bin/activate
```

Note: On Windows, use `~\.venv\Scripts\activate`.

### 2. Install Required Dependencies

Install Python dependencies defined in test-requirements.txt:

```bash
python -m pip install --upgrade pip
python -m pip install -r test-requirements.txt
```

### 3. Set Up TDK Clients

Run the setup script to configure required TDK clients:

```bash
chmod +x setup_clients.sh

./setup_clients.sh
```

### 4. Run Tests

Use the provided script to execute all integration tests:

```bash
chmod +x run_tests.sh

./run_tests.sh
```

This will invoke pytest and run all available test cases.

> ❗️ **Note:**
> The `chmod +x` commands only need to be run once to make the scripts executable. After that, you can run the scripts directly without `chmod`.


#### Running Individual Tests

You can run a specific test file or test function manually using pytest:

```bash
# Run a specific file
pytest login_configuration_client_test.py

# Run a specific test function
pytest login_configuration_client_test.py::test_block_users
```
