import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';

/// Result of executing a data query in the VDSP protocol layer.
///
/// Wraps the underlying query engine's result (currently DCQL) together
/// with the concrete list of [verifiableCredentials] that matched the
/// query expression.
class DataQueryResult {
  /// List of credentials that satisfied the query criteria after filtering.
  final List<ParsedVerifiableCredential> verifiableCredentials;

  /// Raw DCQL query execution result, if the query was executed using DCQL.
  ///
  /// Will be null if another query language was used (once supported).
  final DcqlQueryResult? dcqlResult;
  // final PexQueryResult? pexQueryResult;

  /// Constructs a [DataQueryResult] with the matched [verifiableCredentials]
  /// and optional [dcqlResult] details produced by the query engine.
  DataQueryResult({
    required this.verifiableCredentials,
    required this.dcqlResult,
  });
}
