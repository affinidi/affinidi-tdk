import 'package:json_annotation/json_annotation.dart';

part 'response_body.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class ResponseBody {
  final String response;
  final Map<String, String>? headers;
  @JsonKey(name: 'status_code')
  final int statusCode;

  ResponseBody({
    required this.response,
    required this.headers,
    required this.statusCode,
  });

  factory ResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ResponseBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseBodyToJson(this);
}
