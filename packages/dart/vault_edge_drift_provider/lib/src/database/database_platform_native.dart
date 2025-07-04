import 'dart:io';

import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

import 'database.dart';

/// Class with implementations specific to native platforms
class DatabasePlatform {
  /// Creates a database for native platform using SQLite
  ///
  /// [databaseName] - The database name
  /// [directory] - The directory where the database is stored, it is required on native
  static Future<Database> createDatabase({
    String databaseName = 'vault_edge_drift_db',
    String? directory,
  }) async {
    if (directory == null) {
      throw ArgumentError('directory is required on native platform');
    }

    final dbPath = p.join(directory, databaseName);
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
