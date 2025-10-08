import 'package:json_annotation/json_annotation.dart';

enum DataQueryLanguage {
  @JsonValue('DCQL')
  dcql('DCQL');

  final String value;
  const DataQueryLanguage(this.value);
}
