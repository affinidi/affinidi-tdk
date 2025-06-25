import 'package:drift/wasm.dart';

import 'database.dart';

/// Creates a database for web platform using WASM
Future<Database> platformCreateDatabase(
    {String databaseName = 'vault_edge_drift_db'}) async {
  final result = await WasmDatabase.open(
    databaseName: databaseName,
    sqlite3Uri: Uri.parse('sqlite3.wasm'),
    driftWorkerUri: Uri.parse('drift_worker.js'),
  );
  return Database(result.resolvedExecutor);
}

/// Creates an in-memory database for web platform using WASM
Future<Database> platformCreateInMemoryDatabase() async {
  final result = await WasmDatabase.open(
    databaseName: ':memory:',
    sqlite3Uri: Uri.parse('sqlite3.wasm'),
    driftWorkerUri: Uri.parse('drift_worker.js'),
  );
  return Database(result.resolvedExecutor);
}
