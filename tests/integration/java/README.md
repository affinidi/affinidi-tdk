# Java Integration Tests for Affinidi TDK

## Prerequisites

Ensure you have the following installed:

- **Java 21+**
- **mvn 3.9.9+** (Maven package manager)

## Setup Instructions

Follow the steps below to install dependencies and run the test suite

### 1. Environment Setup

Tests under `tests/integration/java/` rely on a shared `.env` file for configuration and credentials.

Copy the example environment configuration file and provide necessary credentials:

```bash
cp .env.example .env
```

Update only your PROJECT_ID ([link to docs how to create a project](https://docs.affinidi.com/docs/get-started/create-project/)) and PAT details (KEY_ID, PASSPHRASE, PRIVATE_KEY, TOKEN_ID - [link to docs how to create a PAT](https://docs.affinidi.com/dev-tools/affinidi-tdk/get-access-token/)) in your .env file.

Leave all other fields unchanged.


### 2. Set Up TDK Clients

Run the setup script to configure required TDK clients:

```bash
chmod +x install_modules.sh

./install_modules.sh
```

> ❗️ **Note:**
> The `chmod +x` commands only need to be run once to make the scripts executable. After that, you can run the scripts directly without `chmod`.

### 3. Run Tests

Run all integration tests with:

```bash
mvn clean verify
```

Run integration tests for a specific file (f.e. WalletsClient) with:

```bash
mvn clean verify -Dit.test=WalletsClientIT
```

#### 3. Run Tests against DEV environment

❗️For internal usage.

NOTE: Only production environment should be considered as stable.

PAT details should be provided in .env respectively.

Run all integration tests against DEV environment with:

```bash
AFFINIDI_TDK_ENVIRONMENT=dev mvn clean verify
```
