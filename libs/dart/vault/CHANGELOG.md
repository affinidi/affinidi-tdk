# Change Log

## 1.14.0

### Changes

---

Chore: Dependencies Update 

---


## 1.13.0

### Changes

---

Feat: Time-Bound Sharing for Granular Access

* Added `expiresAt` parameter to `ItemPermissionsPolicy.addPermission()` to configure automatic expiration for shared items
* Shared items (files/folders) can now be shared with a time limit, after which access is automatically revoked by the backend
* If `expiresAt` is not provided, access remains until manually revoked (default behavior)
* `expiresAt` can be set to any date (past or future) to support testing scenarios

---

## 1.12.0

### Changes

---

Feat: Granular File and Folder Sharing

* Added `shareItem` method to share individual files/folders with specific permissions (read, write, or all)
* Added `revokeNodeAccess` method to revoke access to specific files/folders
* Added `getNodeAccess` method to retrieve access permissions for files/folders

---

## 1.11.2

### Changes

---

Chore: Dependencies Update 

---

## 1.10.1

### Changes

---

Chore: Combine CredentialStorage and FileStorage in SharedStorage interface 

---

## 1.10.0

### Changes

---

Chore: Dependencies Update 

---

## 1.9.0

### Changes

---

Chore: Dependencies Update 

---

## 1.8.0

### Changes

---

Chore: Dependencies Update 

---

## 1.7.0

### Changes

---

Fix: Dependencies Update (ssi)

---

## 1.5.0

### Changes

---

Fix: Dependencies Update


## 1.4.0

### Changes

---

Feat: Implement Progress Callback


## 1.3.0

### Changes

---

Fix: Dependencies Update


## 1.1.0

### Changes

---

Promote package for the stable release, which encapsulates these feature(s):

* Enables Vault creation using the Wallet implementation from the [SSI package](https://pub.dev/packages/ssi).

* Supports creating, managing, and deleting cloud profiles via Affinidi’s services using the [Affinidi Vault Data Manager package](https://pub.dev/packages/affinidi_tdk_vault_data_manager).

* Provides the ability to share cloud profiles and retrieve shared profiles.


---

## 1.0.0-dev.2

- Initial version.