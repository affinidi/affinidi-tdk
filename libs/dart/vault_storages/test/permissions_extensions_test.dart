import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/src/extensions/permissions_extensions.dart';
import 'package:test/test.dart';
import 'fixtures/permissions_fixtures.dart';

void main() {
  group('Permissions Extensions', () {
    group('When converting permissions to rights', () {
      test('it should convert read permission to read rights', () {
        expect(
          Permissions.read.toRights(),
          equals(PermissionsFixtures.readRights),
        );
      });

      test('it should convert write permission to write rights', () {
        expect(
          Permissions.write.toRights(),
          equals(PermissionsFixtures.writeRights),
        );
      });

      test('it should convert all permission to read and write rights', () {
        expect(
          Permissions.all.toRights(),
          equals(PermissionsFixtures.allRights),
        );
      });
    });
  });
}
