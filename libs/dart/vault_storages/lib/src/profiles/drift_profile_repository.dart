import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

class DriftProfileRepository implements ProfileRepository {
  @override
  Future<void> configure(Object config) {
    // TODO: implement configure
    throw UnimplementedError();
  }

  @override
  Future<void> createProfile({required String name, String? description}) {
    // TODO: implement createProfile
    throw UnimplementedError();
  }

  @override
  Future<void> deleteProfile(Profile profile) {
    // TODO: implement deleteProfile
    throw UnimplementedError();
  }

  @override
  Future<Profile> getProfile(String id) {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

  @override
  Future<bool> isConfigured() {
    // TODO: implement isConfigured
    throw UnimplementedError();
  }

  @override
  Future<List<Profile>> listProfiles() {
    // TODO: implement listProfiles
    throw UnimplementedError();
  }

  @override
  Future<void> updateProfile(Profile profile) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }
}
