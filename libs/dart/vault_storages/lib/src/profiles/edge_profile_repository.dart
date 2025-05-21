import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

class EdgeProfileRepository implements ProfileRepository {
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
  Future<Uint8List> grantProfileAccess(
      {required int accountIndex,
      required String granteeDid,
      required Permissions permissions}) {
    // TODO: implement grantProfileAccess
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
  Future<void> receiveProfileAccess(
      {required int accountIndex,
      required String profileId,
      required Uint8List kek,
      required String grantedProfileDid}) {
    // TODO: implement receiveProfileAccess
    throw UnimplementedError();
  }

  @override
  Future<void> revokeProfileAccess(
      {required int accountIndex, required String granteeDid}) {
    // TODO: implement revokeProfileAccess
    throw UnimplementedError();
  }

  @override
  Future<void> updateProfile(Profile profile) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }
}
