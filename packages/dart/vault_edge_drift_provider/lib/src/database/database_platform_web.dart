import 'package:drift/wasm.dart';

import 'database.dart';

/// Class with implementations specific to web platform
class DatabasePlatform {
  /// Creates a database for web platform using WASM
  ///
  /// [databaseName] - The database name
  /// [directory] - The directory where the database is stored, this parameter is ignored on web
  Future<Database> createDatabase({
    String databaseName = 'vault_edge_drift_db',
    String? directory,
  }) async {
    final result = await WasmDatabase.open(
      databaseName: databaseName,
      sqlite3Uri: Uri.parse('sqlite3.wasm'),
      driftWorkerUri: Uri.parse('drift_worker.js'),
    );
    return Database(result.resolvedExecutor);
  }

  /// Creates an in-memory database for web platform using WASM
  Future<Database> createInMemoryDatabase() async {
    final result = await WasmDatabase.open(
      databaseName: ':memory:',
      sqlite3Uri: Uri.parse('sqlite3.wasm'),
      driftWorkerUri: Uri.parse('drift_worker.js'),
    );
    return Database(result.resolvedExecutor);
  }

  /// Gets the current platform info
  Map<String, String> get info {
    return {
      'platform': 'web',
      'database': 'IndexedDB',
    };
  }
}
