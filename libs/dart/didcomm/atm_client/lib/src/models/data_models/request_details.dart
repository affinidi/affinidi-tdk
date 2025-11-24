import 'package:json_annotation/json_annotation.dart';

part 'request_details.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
/// Details about a service request
class RequestDetails {
  /// HTTP method used in the request.
  final String? requestMethod;
  /// Path of the request.
  final String? requestPath;
  /// Body content of the request.
  final String? requestBody;
  /// Headers included in the request.
  final Map<String, String>? headers;
  /// HTTP status code of the response.
  final int? statusCode;
  /// Response body content.
  final String? responseBody;
  /// Response time in milliseconds.
  final int? responseTime;
  /// Error message if request failed.
  final String? errorMessage;

  /// Creates a [RequestDetails] instance.
  RequestDetails({
    this.requestMethod,
    this.requestPath,
    this.requestBody,
    this.headers,
    this.statusCode,
    this.responseBody,
    this.responseTime,
    this.errorMessage,
  });

  /// Creates a [RequestDetails] instance from JSON.
  factory RequestDetails.fromJson(Map<String, dynamic> json) =>
      _$RequestDetailsFromJson(json);

  /// Converts the [RequestDetails] instance to JSON.
  Map<String, dynamic> toJson() => _$RequestDetailsToJson(this);
}
