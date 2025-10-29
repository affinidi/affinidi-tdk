import 'dart:io';
import 'package:path/path.dart';
import 'package:test/test.dart';

import 'test_config.dart';

void main() async {
  final testsToSkip = ['atlas_example.dart'];

  group('Running example files', () {
    for (final packageName in [
      'mediator_client',
      'vdsp_client',
      'vdip_client',
    ]) {
      group(packageName, () {
        late TestConfig config;

        setUp(() async {
          config = await TestConfig.configureTestFiles(
            packageDirectoryName: packageName,
          );

          final result = await Process.run(
            Platform.resolvedExecutable,
            ['pub', 'get'],
            runInShell: true,
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

            // TODO: uncomment when when atlas_example.dart is fixed
            // if (dartFiles.isEmpty) {
            //   failTest('No Dart example files found.');
            // }

            final filesWithMain = <File>[];

            for (final file in dartFiles) {
              final content = await file.readAsString();
              if (content.contains('void main()')) {
                filesWithMain.add(file);
              }
            }

            // TODO: uncomment when when atlas_example.dart is fixed
            // if (filesWithMain.isEmpty) {
            //   failTest('No Dart example files with void main() found.');
            //   return;
            // }

            final errors = <String>[];

            for (final file in filesWithMain) {
              final result = await Process.run(
                Platform.resolvedExecutable,
                [file.path],
                runInShell: true,
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
          timeout: Timeout(Duration(minutes: 2)),
        );
      });
    }
  });
}

void failTest(String message) {
  throw Exception(message);
}
