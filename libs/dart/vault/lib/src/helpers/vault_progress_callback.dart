/// Interface for progress callbacks in Vault operations.
/// This abstracts away the specific HTTP client implementation details.
typedef VaultProgressCallback = void Function(int sent, int total);

/// Extension to convert between Vault and HTTP client progress callbacks
extension VaultProgressCallbackExtension on VaultProgressCallback? {
  /// Converts a Vault progress callback
  void Function(int, int)? toProgressCallback() {
    if (this == null) return null;
    return (sent, total) => this!(sent, total);
  }
}
