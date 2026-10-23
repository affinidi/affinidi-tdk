# Typescript Integration Tests for Affinidi TDK

## Prerequisites

Ensure you have the following installed:

- **Node.js 22 (22.23.4 or later), 24 (24.22.1 or later), or 26.12.1 and later**
  > 💡 Earlier releases lack the October 2026 security fix and are rejected by `engines`. The LTS (Long Term Support) version is recommended for better stability and performance.
  > For details on current LTS version check [Node.js releases page](https://nodejs.org/en/about/previous-releases).
- **npm v11.6.0+** (Node.js package manager)

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

### Install Required Dependencies

Install dependencies defined in package.json:

```bash
npm install
```

### Run Tests

Use the provided script to execute all integration tests:

```bash
npm test
```

This will run all available test cases.
