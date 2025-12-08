import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('UpdateMpxInstanceDeploymentOptions', () {
    test('should create empty options with all fields null', () {
      final options = const UpdateMpxInstanceDeploymentOptions();

      expect(options.serviceSize, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should create options with only serviceSize', () {
      final options = const UpdateMpxInstanceDeploymentOptions(
        serviceSize: ServiceSize.medium,
      );

      expect(options.serviceSize, ServiceSize.medium);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should create options with all fields', () {
      final options = const UpdateMpxInstanceDeploymentOptions(
        serviceSize: ServiceSize.large,
        name: 'Updated MPX',
        description: 'Updated MPX description',
      );

      expect(options.serviceSize, ServiceSize.large);
      expect(options.name, 'Updated MPX');
      expect(options.description, 'Updated MPX description');
    });

    test('should serialize to JSON with only non-null fields', () {
      final options = const UpdateMpxInstanceDeploymentOptions(
        name: 'Updated Name',
      );

      final json = options.toJson();

      expect(json['name'], 'Updated Name');
      expect(json.containsKey('serviceSize'), isFalse);
      expect(json.containsKey('description'), isFalse);
    });

    test('should serialize to JSON with all fields', () {
      final options = const UpdateMpxInstanceDeploymentOptions(
        serviceSize: ServiceSize.small,
        name: 'Test MPX',
        description: 'Test description',
      );

      final json = options.toJson();

      expect(json['serviceSize'], 'small');
      expect(json['name'], 'Test MPX');
      expect(json['description'], 'Test description');
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'serviceSize': 'tiny',
        'name': 'Test MPX',
        'description': 'Test description',
      };

      final options = UpdateMpxInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, ServiceSize.tiny);
      expect(options.name, 'Test MPX');
      expect(options.description, 'Test description');
    });

    test('should deserialize from empty JSON', () {
      final json = <String, dynamic>{};

      final options = UpdateMpxInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, isNull);
      expect(options.name, isNull);
      expect(options.description, isNull);
    });

    test('should handle partial updates - only description', () {
      final json = {'description': 'New description only'};

      final options = UpdateMpxInstanceDeploymentOptions.fromJson(json);

      expect(options.serviceSize, isNull);
      expect(options.name, isNull);
      expect(options.description, 'New description only');
    });

    test('should round-trip through JSON', () {
      final original = const UpdateMpxInstanceDeploymentOptions(
        serviceSize: ServiceSize.dev,
        name: 'Round-trip MPX',
        description: 'Round-trip description',
      );

      final json = original.toJson();
      final deserialized = UpdateMpxInstanceDeploymentOptions.fromJson(json);

      expect(deserialized.serviceSize, original.serviceSize);
      expect(deserialized.name, original.name);
      expect(deserialized.description, original.description);
    });

    test('should support partial updates scenario - size only', () {
      final updateOptions = const UpdateMpxInstanceDeploymentOptions(
        serviceSize: ServiceSize.large,
      );

      final json = updateOptions.toJson();

      expect(json.keys.length, 1);
      expect(json['serviceSize'], 'large');
      expect(json.containsKey('name'), isFalse);
      expect(json.containsKey('description'), isFalse);
    });

    test('should support updating name and description together', () {
      final updateOptions = const UpdateMpxInstanceDeploymentOptions(
        name: 'New MPX Name',
        description: 'New MPX Description',
      );

      final json = updateOptions.toJson();

      expect(json.keys.length, 2);
      expect(json['name'], 'New MPX Name');
      expect(json['description'], 'New MPX Description');
      expect(json.containsKey('serviceSize'), isFalse);
    });
  });
}
