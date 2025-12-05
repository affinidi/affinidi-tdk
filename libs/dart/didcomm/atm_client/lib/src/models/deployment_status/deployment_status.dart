import 'package:json_annotation/json_annotation.dart';

/// Represents the deployment status of an instance.
enum DeploymentStatus {
  /// The status is unknown.
  @JsonValue('UNKNOWN')
  unknown,

  /// The status is requested.
  @JsonValue('REQUESTED')
  requested,

  /// The status is create in progress.
  @JsonValue('CREATE_IN_PROGRESS')
  createInProgress,

  /// The status is create complete.
  @JsonValue('CREATE_COMPLETE')
  createComplete,

  /// The status is create failed.
  @JsonValue('CREATE_FAILED')
  createFailed,

  /// The status is rollback in progress.
  @JsonValue('ROLLBACK_IN_PROGRESS')
  rollbackInProgress,

  /// The status is rollback complete.
  @JsonValue('ROLLBACK_COMPLETE')
  rollbackComplete,

  /// The status is rollback failed.
  @JsonValue('ROLLBACK_FAILED')
  rollbackFailed,

  /// The status is delete in progress.
  @JsonValue('DELETE_IN_PROGRESS')
  deleteInProgress,

  /// The status is delete complete.
  @JsonValue('DELETE_COMPLETE')
  deleteComplete,

  /// The status is delete failed.
  @JsonValue('DELETE_FAILED')
  deleteFailed,

  /// The status is update in progress.
  @JsonValue('UPDATE_IN_PROGRESS')
  updateInProgress,

  /// The status is update complete.
  @JsonValue('UPDATE_COMPLETE')
  updateComplete,

  /// The status is update failed.
  @JsonValue('UPDATE_FAILED')
  updateFailed,

  /// The status is update rollback in progress.
  @JsonValue('UPDATE_ROLLBACK_IN_PROGRESS')
  updateRollbackInProgress,

  /// The status is update rollback complete.
  @JsonValue('UPDATE_ROLLBACK_COMPLETE')
  updateRollbackComplete,

  /// The status is update rollback failed.
  @JsonValue('UPDATE_ROLLBACK_FAILED')
  updateRollbackFailed,

  /// The status is update complete cleanup in progress.
  @JsonValue('UPDATE_COMPLETE_CLEANUP_IN_PROGRESS')
  updateCompleteCleanupInProgress,

  /// The status is update rollback complete cleanup in progress.
  @JsonValue('UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS')
  updateRollbackCompleteCleanupInProgress
}
