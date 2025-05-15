# Vault Data Manager Examples

This directory contains examples demonstrating how to use the Vault Data Manager package, which is part of the Affinidi TDK.

## Encryption

### 1. Generate Encryption Material

Shows how to generate a data encryption material which includes:

- DEK encrypted with wallet crypto material
- DEK encrypted with API public key
- SHA-256 hash of wallet crypto material

[View Example](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/vault_data_manager/example/encryption/generate_encryption_material_example.dart)

### 2. Convert Wallet-Encrypted DEK to API-Encrypted DEK

Shows how to convert a DEK encrypted with wallet material to one encrypted with the API's public key - [View Example](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/vault_data_manager/example/encryption/convert_wallet_to_api_encryption_example.dart)

### 3. Retrieve Wallet Crypto Material Hash

Shows how to derive a SHA-256 hash of the wallet crypto key used for verification - [View Example](https://github.com/affinidi/affinidi-tdk/tree/main/packages/dart/vault_data_manager/example/encryption/get_crypto_material_hash_example.dart)
