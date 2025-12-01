/// Configuration for different instance types.
enum InstanceType {
  /// Mediator instance type.
  mediator,

  /// MeetingPlace instance type.
  meetingplace,

  /// TrustRegistry instance type.
  trustregistry;

  /// Gets the operation prefix for the instance type.
  String get operationPrefix {
    switch (this) {
      case InstanceType.mediator:
        return 'Mediator';
      case InstanceType.meetingplace:
        return 'MeetingPlace';
      case InstanceType.trustregistry:
        return 'TrustRegistry';
    }
  }

  /// Gets the instance ID field name for the instance type.
  String get instanceIdField {
    switch (this) {
      case InstanceType.mediator:
        return 'mediatorId';
      case InstanceType.meetingplace:
        return 'meetingPlaceId';
      case InstanceType.trustregistry:
        return 'trustRegistryId';
    }
  }

  /// Gets the operation base path for the instance type.
  String get operationBasePath {
    switch (this) {
      case InstanceType.mediator:
        return 'affinidi.io/operations/ama';
      case InstanceType.meetingplace:
        return 'affinidi.io/operations/ama';
      case InstanceType.trustregistry:
        return 'affinidi.io/operations/ama';
    }
  }
}
