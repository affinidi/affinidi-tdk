import 'recognized_profile_data.dart';

/// Represents a file that has been scanned.
class ScannedFile {
  /// Unique identifier for the scanning job
  final String jobId;

  /// Identifier of the profile associated with this scanned file
  final String profileId;

  /// Current status of the scanned file
  final String status;

  /// Identifier of the node containing the scanned file
  final String nodeId;

  /// ISO 8601 timestamp of when the file was scanned
  final String createdAt;

  /// Name of the scanned file
  final String name;

  /// Creates a new scanned file instance.
  ScannedFile({
    required this.jobId,
    required this.profileId,
    required this.status,
    required this.nodeId,
    required this.createdAt,
    required this.name,
  });

  /// Creates a [ScannedFile] from a JSON map.
  factory ScannedFile.fromJson(Map<String, dynamic> json) {
    return ScannedFile(
      jobId: json['jobId'] as String,
      profileId: json['profileId'] as String,
      status: json['status'] as String,
      nodeId: json['nodeId'] as String,
      createdAt: json['createdAt'] as String,
      name: json['name'] as String,
    );
  }

  /// Converts this [ScannedFile] to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'jobId': jobId,
      'profileId': profileId,
      'status': status,
      'nodeId': nodeId,
      'createdAt': createdAt,
      'name': name,
    };
  }
}

/// Contains the detailed data extracted from a scanned file.
class ScannedFileData {
  /// Unique identifier for the scanning job
  final String jobId;

  /// Current status of the scanning process
  final String status;

  /// Identifier of the profile associated with this scan
  final String profileId;

  /// Recognized and structured data extracted from the file
  final RecognizedProfileData data;

  /// Creates a new scanned file data instance.
  ScannedFileData({
    required this.jobId,
    required this.status,
    required this.profileId,
    required this.data,
  });

  /// Creates a [ScannedFileData] from a JSON map.
  factory ScannedFileData.fromJson(Map<String, dynamic> json) {
    return ScannedFileData(
      jobId: json['jobId'] as String,
      status: json['status'] as String,
      profileId: json['profileId'] as String,
      data:
          RecognizedProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  /// Converts this [ScannedFileData] to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'jobId': jobId,
      'status': status,
      'profileId': profileId,
      'data': data.toJson(),
    };
  }
}
