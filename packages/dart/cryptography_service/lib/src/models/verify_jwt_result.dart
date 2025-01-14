class VerifyJwtResult {
  final bool isValid;
  final bool isExpired;
  final String? errorMessage;
  final dynamic jwtPayload;

  VerifyJwtResult({
    required this.isValid,
    required this.isExpired,
    required this.errorMessage,
    required this.jwtPayload,
  });
}
