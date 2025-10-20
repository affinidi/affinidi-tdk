/// Sealed class representing the parameters for requesting credentials.
///
/// This ensures type-safe handling of two scenarios:
/// 1. Request with only proposalId
/// 2. Request with proposalId, holderDid, and assertion (both holderDid and assertion are required together)
sealed class RequestCredentialsParams {
  /// The ID of the proposal being referenced, provided by Issuer OOB
  final String proposalId;

  const RequestCredentialsParams._({required this.proposalId});

  /// Creates a request with only proposalId
  const factory RequestCredentialsParams.byProposalId({
    required String proposalId,
  }) = _RequestWithProposalOnly;

  /// Creates a request with proposalId, holderDid, and assertion
  /// Both holderDid and assertion are required together
  const factory RequestCredentialsParams.byProposalIdFor({
    required String proposalId,
    required String holderDid,
    required String assertion,
  }) = _RequestWithHolderAndAssertion;

  /// Pattern matching helper
  T when<T>({
    required T Function(String proposalId) byProposalId,
    required T Function(String proposalId, String holderDid, String assertion)
        byProposalIdFor,
  }) {
    return switch (this) {
      _RequestWithProposalOnly(:final proposalId) => byProposalId(proposalId),
      _RequestWithHolderAndAssertion(
        :final proposalId,
        :final holderDid,
        :final assertion
      ) =>
        byProposalIdFor(proposalId, holderDid, assertion),
    };
  }
}

/// Internal class for request with only proposalId
final class _RequestWithProposalOnly extends RequestCredentialsParams {
  const _RequestWithProposalOnly({required super.proposalId}) : super._();
}

/// Internal class for request with holderDid and assertion
final class _RequestWithHolderAndAssertion extends RequestCredentialsParams {
  final String holderDid;
  final String assertion;

  const _RequestWithHolderAndAssertion({
    required super.proposalId,
    required this.holderDid,
    required this.assertion,
  }) : super._();
}
