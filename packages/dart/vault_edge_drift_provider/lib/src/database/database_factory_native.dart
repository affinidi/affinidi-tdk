import 'dart:io';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'database.dart';

/// Creates a database for native platform using SQLite
Future<Database> platformCreateDatabase(
    {String databaseName = 'vault_edge_drift_db'}) async {
  final documentsDir = await getApplicationDocumentsDirectory();
  final dbPath = p.join(documentsDir.path, databaseName);
  return Database(NativeDatabase(File(dbPath)));
}

/// Creates an in-memory database for native platform using SQLite
Future<Database> platformCreateInMemoryDatabase() async {
  return Database(NativeDatabase.memory());
}
