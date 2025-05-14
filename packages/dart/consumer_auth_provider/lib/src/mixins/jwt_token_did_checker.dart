/// A mixin that provides utility methods for validating JwtTokens
mixin JwtTokenDidChecker {
  /// Returns true if the token was issued for the did
  bool hasMatchingDid({
    required Map<String, dynamic> decodedToken,
    required String did,
  }) {
    return decodedToken['sub'] == did;
  }

  /// Returns true if the token was issued for the correct granteeDid
  bool hasMatchingGrantee({
    required Map<String, dynamic> decodedToken,
    required String granteeDid,
  }) {
    if (decodedToken['act'] == null) {
      return false;
    }

    if (decodedToken['act'] is! Map<String, dynamic>) {
      return false;
    }

    final act = decodedToken['act'] as Map<String, dynamic>;
    return act['sub'] == granteeDid;
  }
}
