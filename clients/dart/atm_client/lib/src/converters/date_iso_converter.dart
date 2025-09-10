import 'package:json_annotation/json_annotation.dart';

/// A [JsonConverter] for encoding and decoding [DateTime] objects as ISO 8601 strings (UTC).
///
/// This converter is used to serialize and deserialize timestamps in ATM messages.
class DateIsoConverter implements JsonConverter<DateTime?, String?> {
  /// Creates a [DateIsoConverter].
  const DateIsoConverter();

  /// Decodes a [DateTime] from an ISO 8601 string.
  ///
  /// [json]: The string value in ISO 8601 format.
  /// Returns the decoded [DateTime] in UTC, or null if the input is null.
  @override
  DateTime? fromJson(String? json) =>
      json == null ? null : DateTime.parse(json).toUtc();

  /// Encodes a [DateTime] as an ISO 8601 string (UTC).
  ///
  /// [object]: The [DateTime] to encode.
  /// Returns the string value in ISO 8601 format, or null if the input is null.
  @override
  String? toJson(DateTime? object) => object?.toUtc().toIso8601String();
}