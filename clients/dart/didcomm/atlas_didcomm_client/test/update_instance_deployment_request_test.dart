import 'package:affinidi_tdk_atlas_didcomm_client/affinidi_tdk_atlas_didcomm_client.dart';
import 'package:test/test.dart';

void main() {
  group('UpdateMediatorInstanceDeploymentOptions', () {
    test('should create options with all fields null', () {
      final options = const UpdateMediatorInstanceDeploymentOptions();

      expect(options.serviceSize, isNull);
      expect(options.mediatorAclMode, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should create options with all fields', () {
      final options = const UpdateMediatorInstanceDeploymentOptions(
        serviceSize: ServiceSize.small,
        mediatorAclMode: MediatorAclMode.explicitDeny,
        name: 'Updated Mediator',
        description: 'Updated description',
      );

      expect(options.serviceSize, ServiceSize.small);
      expect(options.mediatorAclMode, MediatorAclMode.explicitDeny);
      expect(options.name, 'Updated Mediator');
      expect(options.description, 'Updated description');
    });

    test('should create options with only name and description', () {
      final options = const UpdateMediatorInstanceDeploymentOptions(
        name: 'Test Mediator',
        description: 'Test description',
      );

      expect(options.name, 'Test Mediator');
      expect(options.description, 'Test description');
      expect(options.serviceSize, isNull);
      expect(options.mediatorAclMode, isNull);
    });

    test('should create options with only serviceSize', () {
      final options = const UpdateMediatorInstanceDeploymentOptions(
        serviceSize: ServiceSize.medium,
      );

      expect(options.serviceSize, ServiceSize.medium);
      expect(options.mediatorAclMode, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should create options with only mediatorAclMode', () {
      final options = const UpdateMediatorInstanceDeploymentOptions(
        mediatorAclMode: MediatorAclMode.explicitAllow,
      );

      expect(options.serviceSize, isNull);
      expect(options.mediatorAclMode, MediatorAclMode.explicitAllow);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should serialize to JSON with all fields', () {
      final options = const UpdateMediatorInstanceDeploymentOptions(
        serviceSize: ServiceSize.medium,
        mediatorAclMode: MediatorAclMode.explicitDeny,
        name: 'Updated Name',
        description: 'Updated Description',
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'medium');
      expect(json['mediatorAclMode'], 'explicit_deny');
      expect(json['name'], 'Updated Name');
      expect(json['description'], 'Updated Description');
      expect(json.length, 4);
    });

    test('should serialize to JSON with empty object when all fields are null',
        () {
      final options = const UpdateMediatorInstanceDeploymentOptions();

      final json = options.toJson();

      expect(json, isEmpty);
    });

    test('should serialize to JSON without null fields', () {
      final options = const UpdateMediatorInstanceDeploymentOptions(
        name: 'Test Name',
        serviceSize: ServiceSize.large,
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'large');
      expect(json['name'], 'Test Name');
      expect(json.containsKey('mediatorAclMode'), isFalse);
      expect(json.containsKey('description'), isFalse);
      expect(json.length, 2);
    });

    test('should deserialize from JSON with all fields', () {
      final json = {
        'serviceSize': 'large',
        'mediatorAclMode': 'explicit_deny',
        'name': 'Deserialized Name',
        'description': 'Deserialized Description',
      };

      final options = UpdateMediatorInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.large);
      expect(options.mediatorAclMode, MediatorAclMode.explicitDeny);
      expect(options.name, 'Deserialized Name');
      expect(options.description, 'Deserialized Description');
    });

    test('should deserialize from JSON with empty object', () {
      final json = <String, dynamic>{};

      final options = UpdateMediatorInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, isNull);
      expect(options.mediatorAclMode, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should deserialize from JSON with partial fields', () {
      final json = {
        'serviceSize': 'tiny',
        'description': 'Only description',
      };

      final options = UpdateMediatorInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.tiny);
      expect(options.description, 'Only description');
      expect(options.mediatorAclMode, isNull);
      expect(options.name, isNull);
    });

    test('should handle null values in JSON', () {
      final json = {
        'serviceSize': null,
        'mediatorAclMode': null,
        'name': null,
        'description': null,
      };

      final options = UpdateMediatorInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, isNull);
      expect(options.mediatorAclMode, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should handle extra fields in JSON', () {
      final json = {
        'name': 'Test Name',
        'serviceSize': 'small',
        'extraField': 'should be ignored',
        'anotherExtra': 123,
      };

      final options = UpdateMediatorInstanceDeploymentOptions.fromJson(json);

      expect(options.name, 'Test Name');
      expect(options.serviceSize, ServiceSize.small);
    });

    test('should serialize different service sizes correctly', () {
      final sizes = [
        ServiceSize.dev,
        ServiceSize.tiny,
        ServiceSize.small,
        ServiceSize.medium,
        ServiceSize.large,
      ];

      final expectedStrings = ['dev', 'tiny', 'small', 'medium', 'large'];

      for (var i = 0; i < sizes.length; i++) {
        final options = UpdateMediatorInstanceDeploymentOptions(
          serviceSize: sizes[i],
        );
        final json = options.toJson();
        expect(json['serviceSize'], expectedStrings[i]);
      }
    });

    test('should serialize different ACL modes correctly', () {
      final explicitDeny = const UpdateMediatorInstanceDeploymentOptions(
        mediatorAclMode: MediatorAclMode.explicitDeny,
      );
      expect(explicitDeny.toJson()['mediatorAclMode'], 'explicit_deny');

      final explicitAllow = const UpdateMediatorInstanceDeploymentOptions(
        mediatorAclMode: MediatorAclMode.explicitAllow,
      );
      expect(explicitAllow.toJson()['mediatorAclMode'], 'explicit_allow');
    });

    test('should round-trip through JSON serialization', () {
      final original = const UpdateMediatorInstanceDeploymentOptions(
        serviceSize: ServiceSize.medium,
        mediatorAclMode: MediatorAclMode.explicitDeny,
        name: 'Test Name',
        description: 'Test Description',
      );

      final json = original.toJson();
      final deserialized =
          UpdateMediatorInstanceDeploymentOptions.fromJson(json);

      expect(deserialized.serviceSize, original.serviceSize);
      expect(deserialized.mediatorAclMode, original.mediatorAclMode);
      expect(deserialized.name, original.name);
      expect(deserialized.description, original.description);
    });
  });
}
