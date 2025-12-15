import 'package:affinidi_tdk_atlas_didcomm_client/affinidi_tdk_atlas_didcomm_client.dart';
import 'package:test/test.dart';

void main() {
  group('UpdateMediatorInstanceDeploymentOptions', () {
    test('should create empty options with all fields null', () {
      final options = UpdateMediatorInstanceDeploymentOptions();

      expect(options.serviceSize, isNull);
      expect(options.mediatorAclMode, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should create options with only serviceSize', () {
      final options = UpdateMediatorInstanceDeploymentOptions(
        serviceSize: ServiceSize.medium,
      );

      expect(options.serviceSize, ServiceSize.medium);
      expect(options.mediatorAclMode, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should create options with only mediatorAclMode', () {
      final options = UpdateMediatorInstanceDeploymentOptions(
        mediatorAclMode: MediatorAclMode.explicitAllow,
      );

      expect(options.serviceSize, isNull);
      expect(options.mediatorAclMode, MediatorAclMode.explicitAllow);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should create options with all fields', () {
      final options = UpdateMediatorInstanceDeploymentOptions(
        serviceSize: ServiceSize.large,
        mediatorAclMode: MediatorAclMode.explicitDeny,
        name: 'Updated Mediator',
        description: 'Updated description',
      );

      expect(options.serviceSize, ServiceSize.large);
      expect(options.mediatorAclMode, MediatorAclMode.explicitDeny);
      expect(options.name, 'Updated Mediator');
      expect(options.description, 'Updated description');
    });

    test('should serialize to JSON with only non-null fields', () {
      final options = UpdateMediatorInstanceDeploymentOptions(
        serviceSize: ServiceSize.small,
        name: 'Updated Name',
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'small');
      expect(json['name'], 'Updated Name');
      expect(json.containsKey('mediatorAclMode'), isFalse);
      expect(json.containsKey('description'), isFalse);
    });

    test('should serialize to JSON with all fields', () {
      final options = UpdateMediatorInstanceDeploymentOptions(
        serviceSize: ServiceSize.tiny,
        mediatorAclMode: MediatorAclMode.explicitAllow,
        name: 'Test',
        description: 'Description',
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'tiny');
      expect(json['mediatorAclMode'], 'explicit_allow');
      expect(json['name'], 'Test');
      expect(json['description'], 'Description');
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'serviceSize': 'medium',
        'mediatorAclMode': 'explicit_deny',
        'name': 'Test Mediator',
        'description': 'Test description',
      };

      final options = UpdateMediatorInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.medium);
      expect(options.mediatorAclMode, MediatorAclMode.explicitDeny);
      expect(options.name, 'Test Mediator');
      expect(options.description, 'Test description');
    });

    test('should deserialize from empty JSON', () {
      final json = <String, dynamic>{};

      final options = UpdateMediatorInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, isNull);
      expect(options.mediatorAclMode, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should handle partial updates - only serviceSize', () {
      final json = {'serviceSize': 'large'};

      final options = UpdateMediatorInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.large);
      expect(options.mediatorAclMode, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should round-trip through JSON', () {
      final original = UpdateMediatorInstanceDeploymentOptions(
        serviceSize: ServiceSize.dev,
        mediatorAclMode: MediatorAclMode.explicitAllow,
        name: 'Round-trip test',
        description: 'Round-trip description',
      );

      final json = original.toJson();
      final deserialized =
          UpdateMediatorInstanceDeploymentOptions.fromJson(json);

      expect(deserialized.serviceSize, original.serviceSize);
      expect(deserialized.mediatorAclMode, original.mediatorAclMode);
      expect(deserialized.name, original.name);
      expect(deserialized.description, original.description);
    });

    test('should support partial updates scenario', () {
      // Simulate updating only name and description, keeping size and ACL mode unchanged
      final updateOptions = UpdateMediatorInstanceDeploymentOptions(
        name: 'New Name',
        description: 'New Description',
      );

      final json = updateOptions.toJson();

      expect(json.keys.length, 2);
      expect(json['name'], 'New Name');
      expect(json['description'], 'New Description');
      expect(json.containsKey('serviceSize'), isFalse);
      expect(json.containsKey('mediatorAclMode'), isFalse);
    });
  });
}
