import 'dart:io';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'database.dart';

/// Class with implementations specific to native platforms
class DatabasePlatform {
  /// Creates a database for native platform using SQLite
  static Future<Database> createDatabase(
      {String databaseName = 'vault_edge_drift_db'}) async {
    final documentsDir = await getApplicationDocumentsDirectory();
    final dbPath = p.join(documentsDir.path, databaseName);
    return Database(NativeDatabase(File(dbPath)));
  }

  /// Creates an in-memory database for native platform using SQLite
  static Future<Database> createInMemoryDatabase() async {
    return Database(NativeDatabase.memory());
  }

  /// Gets the current platform info
  static Map<String, String> get info {
    return {
      'platform': 'native',
      'database': 'SQLite',
    };
  }
}
