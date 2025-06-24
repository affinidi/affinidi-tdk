import 'package:drift/wasm.dart';

import 'database.dart';

Future<Database> platformCreateDatabase(
    {String databaseName = 'vault_edge_drift_db'}) async {
  final result = await WasmDatabase.open(
    databaseName: databaseName,
    sqlite3Uri: Uri.parse('sqlite3.wasm'),
    driftWorkerUri: Uri.parse('drift_worker.js'),
  );
  return Database(result.resolvedExecutor);
}

Future<Database> platformCreateInMemoryDatabase() async {
  // For web, use a temporary database that will be in memory
  final result = await WasmDatabase.open(
    databaseName: ':memory:',
    sqlite3Uri: Uri.parse('sqlite3.wasm'),
    driftWorkerUri: Uri.parse('drift_worker.js'),
  );
  return Database(result.resolvedExecutor);
}
