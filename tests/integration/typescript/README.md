# Typescript Integration Tests for Affinidi TDK

## Prerequisites

Ensure you have the following installed:

- **NodeJS v20.18.0+**
- **npm v10.8.2+** (NodeJS package manager)

## Setup Instructions

Follow the steps below to install dependencies and run the test suite

### Environment Setup

Tests under `tests/integration/typescript/` rely on a shared `.env` file for configuration and credentials.

Copy the example environment configuration file and provide necessary credentials:

```bash
cp .env.example .env
```

Update only your PROJECT_ID ([link to docs how to create a project](https://docs.affinidi.com/docs/get-started/create-project/)) and PAT details (KEY_ID, PASSPHRASE, PRIVATE_KEY, TOKEN_ID - [link to docs how to create a PAT](https://docs.affinidi.com/dev-tools/affinidi-tdk/get-access-token/)) in your .env file.

Leave all other fields unchanged.

### 1. Install Required Dependencies

Install dependencies defined in package.json:

```bash
npm install
```

### 4. Run Tests

Use the provided script to execute all integration tests:

```bash
npm test
```

This will run all available test cases.
