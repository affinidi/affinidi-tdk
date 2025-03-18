class SeedDecryptionException implements Exception {
  final String message;

  SeedDecryptionException([dynamic cause])
      : message =
            cause is Exception ? cause.toString() : "Error decrypting seed";

  @override
  String toString() => "SeedDecryptionException: $message";
}
