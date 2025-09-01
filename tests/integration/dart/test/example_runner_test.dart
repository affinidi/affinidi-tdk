import 'dart:io';
import 'package:path/path.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart'
    as mediator_client;

import 'test_config.dart';

void main() async {
  // import anything from every package with examples, so it can be properly installed
  final packages = {
    'mediator_client': mediator_client.DidcommMessage.mediaType,
  };

  group('Running example files', () {
    for (final packageName in packages.keys) {
      group(packageName, () {
        late TestConfig config;

        setUp(() async {
          config = await TestConfig.configureTestFiles(
            packageDirectoryName: 'mediator_client',
          );
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
                .toList();

            if (dartFiles.isEmpty) {
              failTest('No Dart example files found.');
            }

            final filesWithMain = <File>[];

            for (final file in dartFiles) {
              final content = await file.readAsString();
              if (content.contains('void main()')) {
                filesWithMain.add(file);
              }
            }

            if (filesWithMain.isEmpty) {
              failTest('No Dart example files with void main() found.');
              return;
            }

            final errors = <String>[];

            await Future.wait(filesWithMain.map((file) async {
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
            }));

            if (errors.isNotEmpty) {
              failTest(errors.join('\n'));
            }

            expect(errors, isEmpty);
          },
          // gives enough time for the examples to run
          timeout: const Timeout.factor(2),
        );
      });
    }
  });
}

void failTest(String message) {
  throw Exception(message);
}
