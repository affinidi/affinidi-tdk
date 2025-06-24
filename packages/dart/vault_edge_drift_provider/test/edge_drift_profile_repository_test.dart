import 'package:affinidi_tdk_vault_edge_drift_provider/src/database/database.dart';
import 'package:affinidi_tdk_vault_edge_drift_provider/src/edge_drift_profile_repository.dart';
import 'package:affinidi_tdk_vault_edge_provider/src/models/edge_profile.dart';
import 'package:drift/native.dart';
import 'package:test/test.dart';

void main() {
  late Database database;
  late EdgeDriftProfileRepository sut;

  setUp(() {
    database = Database(NativeDatabase.memory());
    sut = EdgeDriftProfileRepository(database: database);
  });

  tearDown(() {
    database.close();
  });

  group('When creating a profile', () {
    final name = 'Test Name';
    final accountIndex = 1;

    group('and description is not null', () {
      final description = 'Test Description';

      test('it correctly adds an entry to the database', () async {
        await sut.createProfile(
          name: name,
          description: description,
          accountIndex: accountIndex,
        );

        final profiles = await sut.listProfiles();
        final newProfile = profiles.firstOrNull;

        expect(newProfile, isNotNull);
        expect(newProfile!.name, equals(name));
        expect(newProfile.description, equals(description));
        expect(newProfile.accountIndex, equals(accountIndex));
      });
    });

    group('and description is null', () {
      test('it correctly adds an entry to the database', () async {
        await sut.createProfile(
          name: name,
          accountIndex: accountIndex,
        );

        final profiles = await sut.listProfiles();
        final newProfile = profiles.firstOrNull;

        expect(newProfile, isNotNull);
        expect(newProfile!.name, equals(name));
        expect(newProfile.description, isNull);
        expect(newProfile.accountIndex, equals(accountIndex));
      });
    });
  });

  group('When listing profiles', () {
    setUp(() async {
      await sut.createProfile(name: 'Profile 1', accountIndex: 1);
      await sut.createProfile(name: 'Profile 2', accountIndex: 2);
    });

    test('it correctly retrieves the profiles', () async {
      final profiles = await sut.listProfiles();

      expect(profiles.length, equals(2));
      expect(profiles.first.name, equals('Profile 1'));
      expect(profiles.first.accountIndex, equals(1));
      expect(profiles.last.name, equals('Profile 2'));
      expect(profiles.last.accountIndex, equals(2));
    });
  });

  group('When deleting a profile', () {
    late EdgeProfile profile;
    final name = 'Test Name';
    final description = 'Test Name';

    setUp(() async {
      await sut.createProfile(
        name: name,
        description: description,
        accountIndex: 1,
      );

      final profiles = await sut.listProfiles();
      profile = profiles.firstOrNull!;
    });

    test('it correctly removes the entry from the database', () async {
      await sut.deleteProfile(profileId: profile.id);

      final profiles = await sut.listProfiles();
      expect(profiles, isEmpty);
    });
  });

  group('When updating a profile', () {
    late EdgeProfile profile;
    final name = 'Test Name';
    final description = 'Test Name';

    setUp(() async {
      await sut.createProfile(
        name: name,
        description: description,
        accountIndex: 1,
      );

      final profiles = await sut.listProfiles();
      profile = profiles.firstOrNull!;
    });

    group('and setting the name to a different value', () {
      test('it correctly updates name to the new value', () async {
        final newName = 'New Name';
        profile = profile.copyWith(name: newName);

        await sut.updateProfile(profile: profile);

        final profiles = await sut.listProfiles();
        final updatedProfile = profiles.firstOrNull;

        expect(updatedProfile, isNotNull);
        expect(updatedProfile!.name, equals(newName));
        expect(updatedProfile.description, equals(description));
      });
    });

    group('and setting the description to null', () {
      test('it correctly updates description to null', () async {
        profile = profile.copyWith(description: null);

        await sut.updateProfile(profile: profile);

        final profiles = await sut.listProfiles();
        final updatedProfile = profiles.firstOrNull;

        expect(updatedProfile, isNotNull);
        expect(updatedProfile!.name, equals(name));
        expect(updatedProfile.description, isNull);
      });
    });

    group('and setting the description to a different value', () {
      test('it correctly updates description to the new value', () async {
        final newDescription = 'New Description';
        profile = profile.copyWith(description: newDescription);

        await sut.updateProfile(profile: profile);

        final profiles = await sut.listProfiles();
        final updatedProfile = profiles.firstOrNull;

        expect(updatedProfile, isNotNull);
        expect(updatedProfile!.name, equals(name));
        expect(updatedProfile.description, equals(newDescription));
      });
    });
  });
}
