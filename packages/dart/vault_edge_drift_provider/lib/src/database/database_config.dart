import 'database.dart';
import 'database_platform.dart';

/// Simple database configuration for cross-platform initialization
class DatabaseConfig {
  /// Creates a database instance for the current platform
  ///
  /// Web: Uses IndexedDB
  /// Native (iOS/Android): Uses SQLite in Documents directory
  ///
  /// [databaseName] - Name of the database (default: 'vault_edge_drift.db')
  static Future<Database> createDatabase({
    String databaseName = 'vault_edge_drift_db',
  }) async {
    return DatabasePlatform.createDatabase(databaseName: databaseName);
  }

  /// Creates an in-memory database for testing
  static Future<Database> createInMemoryDatabase() async {
    return DatabasePlatform.createInMemoryDatabase();
  }

  /// Gets the current platform info
  static Map<String, String> getPlatformInfo() => DatabasePlatform.info;
}
