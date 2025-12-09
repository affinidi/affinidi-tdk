import 'package:affinidi_tdk_atlas_didcomm_client/affinidi_tdk_atlas_didcomm_client.dart';
import 'package:test/test.dart';

void main() {
  group('DeployMediatorInstanceOptions', () {
    test('should create options with required fields', () {
      final options = const DeployMediatorInstanceOptions(
        serviceSize: ServiceSize.tiny,
        mediatorAclMode: MediatorAclMode.explicitDeny,
      );

      expect(options.serviceSize, ServiceSize.tiny);
      expect(options.mediatorAclMode, MediatorAclMode.explicitDeny);
      expect(options.administratorDids, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should create options with all fields', () {
      final options = const DeployMediatorInstanceOptions(
        serviceSize: ServiceSize.small,
        mediatorAclMode: MediatorAclMode.explicitAllow,
        administratorDids: 'did:example:admin1,did:example:admin2',
        name: 'Test Mediator',
        description: 'Test description',
      );

      expect(options.serviceSize, ServiceSize.small);
      expect(options.mediatorAclMode, MediatorAclMode.explicitAllow);
      expect(
          options.administratorDids, 'did:example:admin1,did:example:admin2');
      expect(options.name, 'Test Mediator');
      expect(options.description, 'Test description');
    });

    test('should serialize to JSON correctly with all fields', () {
      final options = const DeployMediatorInstanceOptions(
        serviceSize: ServiceSize.medium,
        mediatorAclMode: MediatorAclMode.explicitDeny,
        administratorDids: 'did:example:admin',
        name: 'Test Mediator',
        description: 'Test description',
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'medium');
      expect(json['mediatorAclMode'], 'explicit_deny');
      expect(json['administratorDids'], 'did:example:admin');
      expect(json['name'], 'Test Mediator');
      expect(json['description'], 'Test description');
    });

    test('should serialize to JSON without null fields', () {
      final options = const DeployMediatorInstanceOptions(
        serviceSize: ServiceSize.large,
        mediatorAclMode: MediatorAclMode.explicitAllow,
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'large');
      expect(json['mediatorAclMode'], 'explicit_allow');
      expect(json.containsKey('administratorDids'), isFalse);
      expect(json.containsKey('name'), isFalse);
      expect(json.containsKey('description'), isFalse);
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'serviceSize': 'tiny',
        'mediatorAclMode': 'explicit_deny',
        'administratorDids': 'did:example:admin',
        'name': 'Test Mediator',
        'description': 'Test description',
      };

      final options = DeployMediatorInstanceOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.tiny);
      expect(options.mediatorAclMode, MediatorAclMode.explicitDeny);
      expect(options.administratorDids, 'did:example:admin');
      expect(options.name, 'Test Mediator');
      expect(options.description, 'Test description');
    });

    test('should deserialize from JSON with only required fields', () {
      final json = {
        'serviceSize': 'small',
        'mediatorAclMode': 'explicit_allow',
      };

      final options = DeployMediatorInstanceOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.small);
      expect(options.mediatorAclMode, MediatorAclMode.explicitAllow);
      expect(options.administratorDids, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should handle null values in JSON for optional fields', () {
      final json = {
        'serviceSize': 'dev',
        'mediatorAclMode': 'explicit_deny',
        'administratorDids': null,
        'name': null,
        'description': null,
      };

      final options = DeployMediatorInstanceOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.dev);
      expect(options.mediatorAclMode, MediatorAclMode.explicitDeny);
      expect(options.administratorDids, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should round-trip through JSON', () {
      final original = const DeployMediatorInstanceOptions(
        serviceSize: ServiceSize.medium,
        mediatorAclMode: MediatorAclMode.explicitAllow,
        administratorDids: 'did:example:admin',
        name: 'Test Mediator',
        description: 'Round-trip test',
      );

      final json = original.toJson();
      final deserialized = DeployMediatorInstanceOptions.fromJson(json);

      expect(deserialized.serviceSize, original.serviceSize);
      expect(deserialized.mediatorAclMode, original.mediatorAclMode);
      expect(deserialized.administratorDids, original.administratorDids);
      expect(deserialized.name, original.name);
      expect(deserialized.description, original.description);
    });
  });
}
