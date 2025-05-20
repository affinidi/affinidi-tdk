import 'package:affinidi_tdk_vault_storages/src/model/item.dart';
import 'package:affinidi_tdk_vault_storages/src/model/node_type.dart';
import 'package:test/test.dart';
import 'fixtures/item_fixtures.dart';

void main() {
  group('When creating an Item', () {
    group('with all properties', () {
      test('it should create an item with correct values', () {
        final item = ItemFixtures.completeItem;

        expect(item.id, equals('test_id'));
        expect(item.name, equals('test_item'));
        expect(item.description, equals('test description'));
        expect(item.createdAt, equals(ItemFixtures.testDate));
        expect(item.modifiedAt, equals(ItemFixtures.testDate));
        expect(item.createdBy, equals('user1'));
        expect(item.modifiedBy, equals('user1'));
        expect(item.fileCount, equals(0));
        expect(item.folderCount, equals(0));
        expect(item.parentNodeId, equals('parent_id'));
        expect(item.type, equals(NodeType.FILE));
      });
    });

    group('with minimal properties', () {
      test('it should create an item with required values only', () {
        final item = ItemFixtures.minimalItem;

        expect(item.id, equals('test_id'));
        expect(item.name, equals('test_item'));
        expect(item.description, isNull);
        expect(item.fileCount, isNull);
        expect(item.folderCount, isNull);
        expect(item.parentNodeId, isNull);
      });
    });
  });

  group('When converting Item to/from JSON', () {
    group('and all properties are present', () {
      test('it should correctly convert to and from JSON', () {
        final json = ItemFixtures.completeJson;
        final item = Item.fromJson(json);
        final convertedJson = item.toJson();

        expect(convertedJson, equals(json));
      });
    });

    group('and optional properties are missing', () {
      test('it should handle null values correctly', () {
        final json = ItemFixtures.minimalJson;
        final item = Item.fromJson(json);
        final convertedJson = item.toJson();

        expect(item.description, isNull);
        expect(item.fileCount, isNull);
        expect(item.folderCount, isNull);
        expect(item.parentNodeId, isNull);
        expect(convertedJson['description'], isNull);
        expect(convertedJson['fileCount'], isNull);
        expect(convertedJson['folderCount'], isNull);
        expect(convertedJson['parentNodeId'], isNull);
      });
    });

    group('and different node types are used', () {
      test('it should handle all node types correctly', () {
        for (final type in NodeType.values) {
          final json = Map<String, dynamic>.from(ItemFixtures.minimalJson)
            ..['type'] = type.name;

          final item = Item.fromJson(json);
          expect(item.type, equals(type));
        }
      });
    });

    group('and invalid JSON is provided', () {
      test('it should throw FormatException for invalid date format', () {
        expect(
          () => Item.fromJson(ItemFixtures.invalidDateJson),
          throwsFormatException,
        );
      });

      test('it should throw StateError for invalid node type', () {
        expect(
          () => Item.fromJson(ItemFixtures.invalidTypeJson),
          throwsStateError,
        );
      });
    });
  });
}
