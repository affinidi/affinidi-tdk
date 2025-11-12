import 'package:json_annotation/json_annotation.dart';

/// Represents data query languages for credential queries.
enum DataQueryLanguage {
  /// Digital Credential Query Language
  @JsonValue('DCQL')
  dcql('DCQL');

  /// The string value of the query language
  final String value;
  const DataQueryLanguage(this.value);
}
