// ignore_for_file: avoid_print

import 'package:affinidi_tdk_vault_edge_drift_provider/affinidi_tdk_vault_edge_drift_provider.dart';

void main() async {
  // Create an in memory database
  final database = Database(NativeDatabase.memory());

  // Create a profile repository
  final repository = EdgeDriftProfileRepository(database: database);

  // Add a new profile
  print('Adding a new profile');
  await repository.createProfile(name: 'Profile Name', accountIndex: 1);
  var profiles = await repository.listProfiles();
  _printProfiles(profiles);

  // Update profile name
  print('Updating the profile');
  var profile = profiles.first;
  profile = profile.copyWith(name: 'Updated name');
  await repository.updateProfile(profile: profile);
  profiles = await repository.listProfiles();
  _printProfiles(profiles);

  // Delete profile
  print('Deleting the profile');
  await repository.deleteProfile(profileId: profile.id);
  profiles = await repository.listProfiles();
  _printProfiles(profiles);
}

void _printProfiles(List<EdgeProfile> profiles) {
  if (profiles.isEmpty) {
    print('No profiles found');
    return;
  }

  for (final profile in profiles) {
    print('Found profile with name: ${profile.name} and id: ${profile.id}');
  }
}
