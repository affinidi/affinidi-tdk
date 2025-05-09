import 'package:dio/dio.dart';

const _pendingUploadIssue = 'Cannot delete a node for pending upload';

/// An extension on the `DioException` class to provide additional functionality
extension DioErrorPendingUpload on DioException {
  /// Checks if the current error is related to a pending upload.
  ///
  /// Returns `true` if the error is identified as a pending upload error,
  /// otherwise returns `false`.
  bool get isPendingUploadError {
    final data = response?.data;
    if (data is Map<String, dynamic>) {
      final details = data['details'];
      if (details is List && details.isNotEmpty) {
        final first = details.first;
        if (first is Map<String, dynamic>) {
          return first['issue'] == _pendingUploadIssue;
        }
      }
    }

    return false;
  }
}
