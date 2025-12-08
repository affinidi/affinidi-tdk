import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('UpdateTrInstanceDeploymentOptions', () {
    test('should create empty options with all fields null', () {
      final options = const UpdateTrInstanceDeploymentOptions();

      expect(options.serviceSize, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
      expect(options.defaultMediatorDid, isNull);
      expect(options.administratorDids, isNull);
      expect(options.corsAllowedOrigins, isNull);
    });

    test('should create options with only serviceSize', () {
      final options = const UpdateTrInstanceDeploymentOptions(
        serviceSize: ServiceSize.large,
      );

      expect(options.serviceSize, ServiceSize.large);
      expect(options.name, isNull);
      expect(options.description, isNull);
      expect(options.defaultMediatorDid, isNull);
      expect(options.administratorDids, isNull);
      expect(options.corsAllowedOrigins, isNull);
    });

    test('should create options with all fields', () {
      final options = const UpdateTrInstanceDeploymentOptions(
        serviceSize: ServiceSize.medium,
        name: 'Updated TR',
        description: 'Updated TR description',
        defaultMediatorDid: 'did:example:new-mediator',
        administratorDids: 'did:example:admin1,did:example:admin2',
        corsAllowedOrigins: 'https://neworigin.com',
      );

      expect(options.serviceSize, ServiceSize.medium);
      expect(options.name, 'Updated TR');
      expect(options.description, 'Updated TR description');
      expect(options.defaultMediatorDid, 'did:example:new-mediator');
      expect(
          options.administratorDids, 'did:example:admin1,did:example:admin2');
      expect(options.corsAllowedOrigins, 'https://neworigin.com');
    });

    test('should serialize to JSON with only non-null fields', () {
      final options = const UpdateTrInstanceDeploymentOptions(
        defaultMediatorDid: 'did:example:mediator',
        corsAllowedOrigins: '*',
      );

      final json = options.toJson();

      expect(json['defaultMediatorDid'], 'did:example:mediator');
      expect(json['corsAllowedOrigins'], '*');
      expect(json.containsKey('serviceSize'), isFalse);
      expect(json.containsKey('name'), isFalse);
      expect(json.containsKey('description'), isFalse);
      expect(json.containsKey('administratorDids'), isFalse);
    });

    test('should serialize to JSON with all fields', () {
      final options = const UpdateTrInstanceDeploymentOptions(
        serviceSize: ServiceSize.small,
        name: 'Test TR',
        description: 'Test description',
        defaultMediatorDid: 'did:example:mediator',
        administratorDids: 'did:example:admin',
        corsAllowedOrigins: 'https://example.com',
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'small');
      expect(json['name'], 'Test TR');
      expect(json['description'], 'Test description');
      expect(json['defaultMediatorDid'], 'did:example:mediator');
      expect(json['administratorDids'], 'did:example:admin');
      expect(json['corsAllowedOrigins'], 'https://example.com');
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'serviceSize': 'tiny',
        'name': 'Test TR',
        'description': 'Test description',
        'defaultMediatorDid': 'did:example:mediator',
        'administratorDids': 'did:example:admin1,did:example:admin2',
        'corsAllowedOrigins': 'https://example.com',
      };

      final options = UpdateTrInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.tiny);
      expect(options.name, 'Test TR');
      expect(options.description, 'Test description');
      expect(options.defaultMediatorDid, 'did:example:mediator');
      expect(
          options.administratorDids, 'did:example:admin1,did:example:admin2');
      expect(options.corsAllowedOrigins, 'https://example.com');
    });

    test('should deserialize from empty JSON', () {
      final json = <String, dynamic>{};

      final options = UpdateTrInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
      expect(options.defaultMediatorDid, isNull);
      expect(options.administratorDids, isNull);
      expect(options.corsAllowedOrigins, isNull);
    });

    test('should handle partial updates - only CORS origins', () {
      final json = {'corsAllowedOrigins': 'https://neworigin.com'};

      final options = UpdateTrInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
      expect(options.defaultMediatorDid, isNull);
      expect(options.administratorDids, isNull);
      expect(options.corsAllowedOrigins, 'https://neworigin.com');
    });

    test('should round-trip through JSON', () {
      final original = const UpdateTrInstanceDeploymentOptions(
        serviceSize: ServiceSize.dev,
        name: 'Round-trip TR',
        description: 'Round-trip description',
        defaultMediatorDid: 'did:example:mediator',
        administratorDids: 'did:example:admin',
        corsAllowedOrigins: '*',
      );

      final json = original.toJson();
      final deserialized = UpdateTrInstanceDeploymentOptions.fromJson(json);

      expect(deserialized.serviceSize, original.serviceSize);
      expect(deserialized.name, original.name);
      expect(deserialized.description, original.description);
      expect(deserialized.defaultMediatorDid, original.defaultMediatorDid);
      expect(deserialized.administratorDids, original.administratorDids);
      expect(deserialized.corsAllowedOrigins, original.corsAllowedOrigins);
    });

    test('should support updating only TR-specific fields', () {
      final updateOptions = const UpdateTrInstanceDeploymentOptions(
        defaultMediatorDid: 'did:example:new-mediator',
        administratorDids: 'did:example:new-admin1,did:example:new-admin2',
        corsAllowedOrigins: 'https://new1.com,https://new2.com',
      );

      final json = updateOptions.toJson();

      expect(json.keys.length, 3);
      expect(json['defaultMediatorDid'], 'did:example:new-mediator');
      expect(json['administratorDids'],
          'did:example:new-admin1,did:example:new-admin2');
      expect(json['corsAllowedOrigins'], 'https://new1.com,https://new2.com');
      expect(json.containsKey('serviceSize'), isFalse);
      expect(json.containsKey('name'), isFalse);
      expect(json.containsKey('description'), isFalse);
    });

    test('should support updating to wildcard CORS', () {
      final updateOptions = const UpdateTrInstanceDeploymentOptions(
        corsAllowedOrigins: '*',
      );

      final json = updateOptions.toJson();

      expect(json.keys.length, 1);
      expect(json['corsAllowedOrigins'], '*');
    });

    test('should support updating administrators list', () {
      final updateOptions = const UpdateTrInstanceDeploymentOptions(
        administratorDids:
            'did:example:admin1,did:example:admin2,did:example:admin3',
      );

      final json = updateOptions.toJson();

      expect(json.keys.length, 1);
      expect(json['administratorDids'], contains('did:example:admin1'));
      expect(json['administratorDids'], contains('did:example:admin2'));
      expect(json['administratorDids'], contains('did:example:admin3'));
    });
  });
}
