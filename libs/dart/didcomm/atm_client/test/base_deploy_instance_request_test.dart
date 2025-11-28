import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:affinidi_tdk_atm_client/src/messages/atlas/config/service_size.dart';
import 'package:test/test.dart';

void main() {
  group('BaseDeployInstanceRequest', () {
    test('should create request with required serviceSize', () {
      final request = BaseDeployInstanceRequest(
        serviceSize: ServiceSize.tiny,
      );

      expect(request.serviceSize, 'tiny');
      expect(request.administratorDids, isNull);
      expect(request.mediatorAclMode, isNull);
      expect(request.name, isNull);
      expect(request.description, isNull);
    });

    test('should create request with all optional fields', () {
      final request = BaseDeployInstanceRequest(
        administratorDids: 'did:example:admin',
        serviceSize: ServiceSize.small,
        mediatorAclMode: 'explicit_deny',
        name: 'Test Instance',
        description: 'Test description',
      );

      expect(request.administratorDids, 'did:example:admin');
      expect(request.serviceSize, 'small');
      expect(request.mediatorAclMode, 'explicit_deny');
      expect(request.name, 'Test Instance');
      expect(request.description, 'Test description');
    });

    test('should serialize to JSON correctly with all fields', () {
      final request = BaseDeployInstanceRequest(
        administratorDids: 'did:example:admin',
        serviceSize: ServiceSize.medium,
        mediatorAclMode: 'explicit_deny',
        name: 'Test Instance',
        description: 'Test description',
      );

      final json = request.toJson();

      expect(json['administratorDids'], 'did:example:admin');
      expect(json['serviceSize'], 'medium');
      expect(json['mediatorAclMode'], 'explicit_deny');
      expect(json['name'], 'Test Instance');
      expect(json['description'], 'Test description');
    });

    test('should serialize to JSON without null fields', () {
      final request = BaseDeployInstanceRequest(
        serviceSize: ServiceSize.large,
      );

      final json = request.toJson();

      expect(json['serviceSize'], 'large');
      expect(json.containsKey('administratorDids'), isFalse);
      expect(json.containsKey('mediatorAclMode'), isFalse);
      expect(json.containsKey('name'), isFalse);
      expect(json.containsKey('description'), isFalse);
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'administratorDids': 'did:example:admin',
        'serviceSize': 'tiny',
        'mediatorAclMode': 'explicit_deny',
        'name': 'Test Instance',
        'description': 'Test description',
      };

      final request = BaseDeployInstanceRequest.fromJson(json);

      expect(request.administratorDids, 'did:example:admin');
      expect(request.serviceSize, 'tiny');
      expect(request.mediatorAclMode, 'explicit_deny');
      expect(request.name, 'Test Instance');
      expect(request.description, 'Test description');
    });

    test('should deserialize from JSON with only required field', () {
      final json = {
        'serviceSize': 'small',
      };

      final request = BaseDeployInstanceRequest.fromJson(json);

      expect(request.serviceSize, 'small');
      expect(request.administratorDids, isNull);
      expect(request.mediatorAclMode, isNull);
      expect(request.name, isNull);
      expect(request.description, isNull);
    });

    test('should throw TypeError when serviceSize is missing', () {
      final json = <String, dynamic>{};

      expect(
        () => BaseDeployInstanceRequest.fromJson(json),
        throwsA(isA<TypeError>()),
      );
    });

    test('should handle null values in JSON', () {
      final json = {
        'serviceSize': 'tiny',
        'administratorDids': null,
        'mediatorAclMode': null,
        'name': null,
        'description': null,
      };

      final request = BaseDeployInstanceRequest.fromJson(json);

      expect(request.serviceSize, 'tiny');
      expect(request.administratorDids, isNull);
      expect(request.mediatorAclMode, isNull);
      expect(request.name, isNull);
      expect(request.description, isNull);
    });

    test('should handle extra fields in JSON', () {
      final json = {
        'serviceSize': 'tiny',
        'extraField': 'should be ignored',
      };

      final request = BaseDeployInstanceRequest.fromJson(json);

      expect(request.serviceSize, 'tiny');
    });
  });
}
