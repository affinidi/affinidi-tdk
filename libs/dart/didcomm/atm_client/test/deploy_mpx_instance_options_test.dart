import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('DeployMpxInstanceOptions', () {
    test('should create options with required serviceSize', () {
      final options = DeployMpxInstanceOptions(
        serviceSize: ServiceSize.tiny,
      );

      expect(options.serviceSize, ServiceSize.tiny);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should create options with all fields', () {
      final options = DeployMpxInstanceOptions(
        serviceSize: ServiceSize.small,
        name: 'Test MPX',
        description: 'Test MPX description',
      );

      expect(options.serviceSize, ServiceSize.small);
      expect(options.name, 'Test MPX');
      expect(options.description, 'Test MPX description');
    });

    test('should serialize to JSON correctly with all fields', () {
      final options = DeployMpxInstanceOptions(
        serviceSize: ServiceSize.medium,
        name: 'Test MPX',
        description: 'Test description',
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'medium');
      expect(json['name'], 'Test MPX');
      expect(json['description'], 'Test description');
    });

    test('should serialize to JSON without null fields', () {
      final options = DeployMpxInstanceOptions(
        serviceSize: ServiceSize.large,
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'large');
      expect(json.containsKey('name'), isFalse);
      expect(json.containsKey('description'), isFalse);
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'serviceSize': 'tiny',
        'name': 'Test MPX',
        'description': 'Test description',
      };

      final options = DeployMpxInstanceOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.tiny);
      expect(options.name, 'Test MPX');
      expect(options.description, 'Test description');
    });

    test('should deserialize from JSON with only required field', () {
      final json = {
        'serviceSize': 'small',
      };

      final options = DeployMpxInstanceOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.small);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should handle null values in JSON', () {
      final json = {
        'serviceSize': 'dev',
        'name': null,
        'description': null,
      };

      final options = DeployMpxInstanceOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.dev);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should round-trip through JSON', () {
      final original = DeployMpxInstanceOptions(
        serviceSize: ServiceSize.medium,
        name: 'Round-trip MPX',
        description: 'Round-trip description',
      );

      final json = original.toJson();
      final deserialized = DeployMpxInstanceOptions.fromJson(json);

      expect(deserialized.serviceSize, original.serviceSize);
      expect(deserialized.name, original.name);
      expect(deserialized.description, original.description);
    });

    test('should handle all service sizes', () {
      for (final size in ServiceSize.values) {
        final options = DeployMpxInstanceOptions(serviceSize: size);
        final json = options.toJson();
        final deserialized = DeployMpxInstanceOptions.fromJson(json);

        expect(deserialized.serviceSize, size);
      }
    });
  });
}
