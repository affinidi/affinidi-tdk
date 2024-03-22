//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for SeedApi
void main() {
  // final instance = SeedApi();

  group('tests for SeedApi', () {
    //Future<CreateSeedResultDto> createSeed({ EmptyInput emptyInput }) async
    test('test createSeed', () async {
      // TODO
    });

    // Export seed as a mnemonic phrase (for seed 128bit / 256bit (default)). Returns the exported seed from the service
    //
    //Future<ExportSeedResultDto> exportSeedAsMnemonic(String id, { EmptyInput emptyInput }) async
    test('test exportSeedAsMnemonic', () async {
      // TODO
    });

    //Future<GetKeyResultDto> getKey(String id) async
    test('test getKey', () async {
      // TODO
    });

    //Future<GetSeedResultDto> getSeed(String id) async
    test('test getSeed', () async {
      // TODO
    });

    //Future<CreateSeedResultDto> importSeed(ImportSeedRequest importSeedRequest) async
    test('test importSeed', () async {
      // TODO
    });

    //Future<ListSeedResultDto> listSeed({ String status }) async
    test('test listSeed', () async {
      // TODO
    });

    // revokes the seed, after that the keys derived from this seed cannot be used anymore. Revoked seed id will be listed in seed list with isRevoked=true flag
    //
    //Future revokeSeed(String id, { EmptyInput emptyInput }) async
    test('test revokeSeed', () async {
      // TODO
    });

  });
}
