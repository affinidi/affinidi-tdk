# Dart Integration Tests for Affinidi TDK

## Prerequisites

Ensure you have the following installed:

- **Dart 3.6.0+**

## Setup Instructions

Follow the steps below to install dependencies and run the test suite

### Environment Setup

Tests under `tests/integration/dart/` rely on a shared `.env` file for configuration and credentials.

Copy the example environment configuration file and provide necessary credentials:

```bash
cp .env.example .env
```

Update only your PROJECT_ID ([link to docs how to create a project](https://docs.affinidi.com/docs/get-started/create-project/)) and PAT details (KEY_ID, PASSPHRASE, PRIVATE_KEY, TOKEN_ID - [link to docs how to create a PAT](https://docs.affinidi.com/dev-tools/affinidi-tdk/get-access-token/)) in your .env file.

Leave all other fields unchanged.

### Install Required Dependencies

Install dependencies defined in pubspec.yaml:

```bash
dart pub get
```

### Run Tests

Use the provided script to execute all integration tests:

```bash
dart test
```

To run a single test provide a name of the test/group:

```bash
dart test -n 'Wallets Client Integration Tests'
```


#### Run tests against DEV

NOTE: For internal usage. To run tests against DEV environment

```bash
flutter test --dart-define=AFFINIDI_TDK_ENVIRONMENT=dev
```
