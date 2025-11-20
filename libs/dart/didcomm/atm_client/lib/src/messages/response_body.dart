import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'response_body.g.dart';

/// Represents the body of an Didcomm response message.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ResponseBody {
  /// The response content as a string.
  final String response;

  /// Optional response headers.
  final Map<String, String>? headers;

  /// The HTTP status code of the response.
  @JsonKey(name: 'status_code')
  final int statusCode;

  /// Creates a response body with status, headers, and response content.
  ResponseBody({
    required this.response,
    required this.headers,
    required this.statusCode,
  });

  /// Creates a ResponseBody from a JSON map.
  factory ResponseBody.fromJson(Map<String, dynamic> json) => ResponseBody(
    response: _stringifyResponse(json['response']),
    headers: (json['headers'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    statusCode: (json['status_code'] as num).toInt(),
  );

  /// Converts this ResponseBody to a JSON map.
  Map<String, dynamic> toJson() => _$ResponseBodyToJson(this);

  static String _stringifyResponse(Object? value) {
    if (value is String) {
      return value;
    }
    if (value == null) {
      throw ArgumentError('Response field must not be null');
    }
    return jsonEncode(value);
  }
}