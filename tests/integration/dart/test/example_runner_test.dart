import 'dart:io';
import 'package:path/path.dart';
import 'package:test/test.dart';

import 'test_config.dart';

void main() async {
  final testsToSkip = [
    'atlas_example.dart',
    'browser_context_example.dart',
  ];

  group('Running example files', () {
    for (final packageName in [
      'didcomm_mediator_client',
      'vdsp',
      'vdip',
      'atlas_didcomm_client',
    ]) {
      group(packageName, () {
        late TestConfig config;

        setUp(() async {
          config = await TestConfig.configureTestFiles(
            packageDirectoryName: packageName,
            skipBob: true,
            skipMediator: true,
          );

          final result = await Process.run(
            Platform.resolvedExecutable,
            ['pub', 'get'],
            workingDirectory: config.packagePath,
          );

          if (result.exitCode != 0) {
            throw Exception(
              'Could not run "dart pub get".\nExit code: ${result.exitCode}.\nStdout: ${result.stdout}.\nStderr: ${result.stderr}.',
            );
          }
        });

        test(
          'Run example files',
          () async {
            final exampleDirectory = Directory(
              join(
                config.packagePath,
                'example',
              ),
            );

            if (!await exampleDirectory.exists()) {
              failTest('No example directory found.');
            }

            final dartFiles = exampleDirectory
                .listSync(recursive: true)
                .whereType<File>()
                .where((file) => file.path.endsWith('.dart'))
                .where((file) => !testsToSkip.contains(basename(file.path)))
                .toList();

            if (dartFiles.isEmpty) {
              failTest('No Dart example files found.');
            }

            final filesWithMain = <File>[];

            for (final file in dartFiles) {
              final content = await file.readAsString();
              if (content.contains('main() {') ||
                  content.contains('main() async {')) {
                filesWithMain.add(file);
              }
            }

            if (filesWithMain.isEmpty) {
              failTest('No Dart example files with main() found.');
              return;
            }

            final errors = <String>[];

            final compileKeys = [
              'AFFINIDI_ATLAS_DID',
            ];

            final compileConfigs = Platform.environment.keys
                .where((key) => compileKeys.contains(key))
                .map(
                  (key) => '--define=$key=${Platform.environment[key]}',
                );

            print('compileConfigs:');
            print(compileConfigs);

            for (final file in filesWithMain) {
              final result = await Process.run(
                Platform.resolvedExecutable,
                [
                  'run',
                  ...compileConfigs,
                  file.path,
                ],
              );

              if (result.exitCode != 0) {
                errors.add(
                  'FAILED: ${file.path}.\nExit code: ${result.exitCode}.\nStdout: ${result.stdout}.\nStderr: ${result.stderr}.',
                );
              }
            }

            if (errors.isNotEmpty) {
              failTest(errors.join('\n'));
            }

            expect(errors, isEmpty);
          },
          // gives enough time for the examples to run
          timeout: Timeout(Duration(minutes: 5)),
        );
      });
    }
  });
}

void failTest(String message) {
  throw Exception(message);
}
