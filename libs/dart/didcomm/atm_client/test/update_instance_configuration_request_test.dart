import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('UpdateInstanceConfigurationOptions', () {
    test('should create options with no fields', () {
      final options = UpdateInstanceConfigurationOptions();

      expect(options.acl, isNull);
    });

    test('should create options with ACL', () {
      final acl = <String, num>{
        'hash1': 1,
        'hash2': 2,
      };

      final options = UpdateInstanceConfigurationOptions(
        acl: acl,
      );

      expect(options.acl, acl);
    });

    test('should create options with empty ACL map', () {
      final options = UpdateInstanceConfigurationOptions(
        acl: <String, num>{},
      );

      expect(options.acl, isEmpty);
    });

    test('should serialize to JSON without fields when ACL is null', () {
      final options = UpdateInstanceConfigurationOptions();

      final json = options.toJson();

      expect(json.containsKey('acl'), isFalse);
      expect(json, isEmpty);
    });

    test('should serialize to JSON with ACL', () {
      final acl = <String, num>{
        'hash1': 1,
        'hash2': 2,
      };

      final options = UpdateInstanceConfigurationOptions(
        acl: acl,
      );

      final json = options.toJson();

      expect(json['acl'], acl);
      expect(json.length, 1);
    });

    test('should serialize to JSON with empty ACL map', () {
      final options = UpdateInstanceConfigurationOptions(
        acl: <String, num>{},
      );

      final json = options.toJson();

      expect(json['acl'], isEmpty);
      expect(json.length, 1);
    });

    test('should deserialize from JSON with ACL', () {
      final acl = <String, num>{
        'hash1': 1,
        'hash2': 2,
      };

      final json = {
        'acl': acl,
      };

      final options = UpdateInstanceConfigurationOptions.fromJson(json);

      expect(options.acl, acl);
    });

    test('should deserialize from JSON with empty object', () {
      final json = <String, dynamic>{};

      final options = UpdateInstanceConfigurationOptions.fromJson(json);

      expect(options.acl, isNull);
    });

    test('should deserialize from JSON with null ACL', () {
      final json = {
        'acl': null,
      };

      final options = UpdateInstanceConfigurationOptions.fromJson(json);

      expect(options.acl, isNull);
    });

    test('should handle ACL with different numeric types', () {
      final acl = <String, num>{
        'hash1': 1,
        'hash2': 2.5,
        'hash3': 3,
      };

      final options = UpdateInstanceConfigurationOptions(
        acl: acl,
      );

      expect(options.acl, acl);
      expect(options.acl!['hash1'], 1);
      expect(options.acl!['hash2'], 2.5);
      expect(options.acl!['hash3'], 3);
    });

    test('should handle extra fields in JSON', () {
      final json = {
        'acl': {'hash1': 1},
        'extraField': 'should be ignored',
        'anotherExtra': 123,
      };

      final options = UpdateInstanceConfigurationOptions.fromJson(json);

      expect(options.acl, {'hash1': 1});
    });

    test('should round-trip through JSON serialization', () {
      final acl = <String, num>{
        'hash1': 1,
        'hash2': 2,
        'hash3': 3.5,
      };

      final original = UpdateInstanceConfigurationOptions(acl: acl);
      final json = original.toJson();
      final deserialized = UpdateInstanceConfigurationOptions.fromJson(json);

      expect(deserialized.acl, original.acl);
    });
  });
}
