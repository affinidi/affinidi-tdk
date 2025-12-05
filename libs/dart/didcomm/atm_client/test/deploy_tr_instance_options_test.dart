import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('DeployTrInstanceOptions', () {
    test('should create options with all required fields', () {
      final options = DeployTrInstanceOptions(
        serviceSize: ServiceSize.tiny,
        defaultMediatorDid: 'did:example:mediator',
        administratorDids: 'did:example:admin1,did:example:admin2',
        corsAllowedOrigins: 'https://example.com,https://app.example.com',
      );

      expect(options.serviceSize, ServiceSize.tiny);
      expect(options.defaultMediatorDid, 'did:example:mediator');
      expect(
          options.administratorDids, 'did:example:admin1,did:example:admin2');
      expect(options.corsAllowedOrigins,
          'https://example.com,https://app.example.com');
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should create options with all fields including optional', () {
      final options = DeployTrInstanceOptions(
        serviceSize: ServiceSize.small,
        defaultMediatorDid: 'did:example:mediator',
        administratorDids: 'did:example:admin',
        corsAllowedOrigins: '*',
        name: 'Test Trust Registry',
        description: 'Test TR description',
      );

      expect(options.serviceSize, ServiceSize.small);
      expect(options.defaultMediatorDid, 'did:example:mediator');
      expect(options.administratorDids, 'did:example:admin');
      expect(options.corsAllowedOrigins, '*');
      expect(options.name, 'Test Trust Registry');
      expect(options.description, 'Test TR description');
    });

    test('should serialize to JSON correctly with all fields', () {
      final options = DeployTrInstanceOptions(
        serviceSize: ServiceSize.medium,
        defaultMediatorDid: 'did:example:mediator',
        administratorDids: 'did:example:admin',
        corsAllowedOrigins: 'https://example.com',
        name: 'Test TR',
        description: 'Test description',
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'medium');
      expect(json['defaultMediatorDid'], 'did:example:mediator');
      expect(json['administratorDids'], 'did:example:admin');
      expect(json['corsAllowedOrigins'], 'https://example.com');
      expect(json['name'], 'Test TR');
      expect(json['description'], 'Test description');
    });

    test('should serialize to JSON without null optional fields', () {
      final options = DeployTrInstanceOptions(
        serviceSize: ServiceSize.large,
        defaultMediatorDid: 'did:example:mediator',
        administratorDids: 'did:example:admin',
        corsAllowedOrigins: '*',
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'large');
      expect(json['defaultMediatorDid'], 'did:example:mediator');
      expect(json['administratorDids'], 'did:example:admin');
      expect(json['corsAllowedOrigins'], '*');
      expect(json.containsKey('name'), isFalse);
      expect(json.containsKey('description'), isFalse);
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'serviceSize': 'tiny',
        'defaultMediatorDid': 'did:example:mediator',
        'administratorDids': 'did:example:admin1,did:example:admin2',
        'corsAllowedOrigins': 'https://example.com',
        'name': 'Test TR',
        'description': 'Test description',
      };

      final options = DeployTrInstanceOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.tiny);
      expect(options.defaultMediatorDid, 'did:example:mediator');
      expect(
          options.administratorDids, 'did:example:admin1,did:example:admin2');
      expect(options.corsAllowedOrigins, 'https://example.com');
      expect(options.name, 'Test TR');
      expect(options.description, 'Test description');
    });

    test('should deserialize from JSON with only required fields', () {
      final json = {
        'serviceSize': 'small',
        'defaultMediatorDid': 'did:example:mediator',
        'administratorDids': 'did:example:admin',
        'corsAllowedOrigins': '*',
      };

      final options = DeployTrInstanceOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.small);
      expect(options.defaultMediatorDid, 'did:example:mediator');
      expect(options.administratorDids, 'did:example:admin');
      expect(options.corsAllowedOrigins, '*');
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should handle null values for optional fields', () {
      final json = {
        'serviceSize': 'dev',
        'defaultMediatorDid': 'did:example:mediator',
        'administratorDids': 'did:example:admin',
        'corsAllowedOrigins': '*',
        'name': null,
        'description': null,
      };

      final options = DeployTrInstanceOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.dev);
      expect(options.defaultMediatorDid, 'did:example:mediator');
      expect(options.administratorDids, 'did:example:admin');
      expect(options.corsAllowedOrigins, '*');
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should round-trip through JSON', () {
      final original = DeployTrInstanceOptions(
        serviceSize: ServiceSize.medium,
        defaultMediatorDid: 'did:example:mediator',
        administratorDids: 'did:example:admin1,did:example:admin2',
        corsAllowedOrigins: 'https://example.com,https://app.example.com',
        name: 'Round-trip TR',
        description: 'Round-trip description',
      );

      final json = original.toJson();
      final deserialized = DeployTrInstanceOptions.fromJson(json);

      expect(deserialized.serviceSize, original.serviceSize);
      expect(deserialized.defaultMediatorDid, original.defaultMediatorDid);
      expect(deserialized.administratorDids, original.administratorDids);
      expect(deserialized.corsAllowedOrigins, original.corsAllowedOrigins);
      expect(deserialized.name, original.name);
      expect(deserialized.description, original.description);
    });

    test('should handle wildcard CORS origins', () {
      final options = DeployTrInstanceOptions(
        serviceSize: ServiceSize.dev,
        defaultMediatorDid: 'did:example:mediator',
        administratorDids: 'did:example:admin',
        corsAllowedOrigins: '*',
      );

      expect(options.corsAllowedOrigins, '*');

      final json = options.toJson();
      expect(json['corsAllowedOrigins'], '*');
    });

    test('should handle multiple CORS origins', () {
      final origins =
          'https://example.com,https://app.example.com,https://test.example.com';
      final options = DeployTrInstanceOptions(
        serviceSize: ServiceSize.small,
        defaultMediatorDid: 'did:example:mediator',
        administratorDids: 'did:example:admin',
        corsAllowedOrigins: origins,
      );

      expect(options.corsAllowedOrigins, origins);

      final json = options.toJson();
      expect(json['corsAllowedOrigins'], origins);
    });
  });
}
