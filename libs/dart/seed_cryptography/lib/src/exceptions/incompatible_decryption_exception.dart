class IncompatibleDecryptionException implements Exception {
  final String message;
  IncompatibleDecryptionException([
    this.message = "Falling back to legacy wallet seed decryption.",
  ]);

  @override
  String toString() => "IncompatibleDecryptionException: $message";
}
