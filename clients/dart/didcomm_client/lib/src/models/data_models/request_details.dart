import 'package:json_annotation/json_annotation.dart';

part 'request_details.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class RequestDetails {
  final String? requestMethod;
  final String? requestPath;
  final String? requestBody;
  final Map<String, String>? headers;
  final int? statusCode;
  final String? responseBody;
  final int? responseTime;
  final String? errorMessage;

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

  factory RequestDetails.fromJson(Map<String, dynamic> json) =>
      _$RequestDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$RequestDetailsToJson(this);
}
