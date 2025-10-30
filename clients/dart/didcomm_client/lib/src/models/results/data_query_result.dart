import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';

class DataQueryResult {
  final List<ParsedVerifiableCredential> verifiableCredentials;
  final DcqlQueryResult? dcqlResult;
  // final PexQueryResult? pexQueryResult;

  DataQueryResult({
    required this.verifiableCredentials,
    required this.dcqlResult,
  });
}
