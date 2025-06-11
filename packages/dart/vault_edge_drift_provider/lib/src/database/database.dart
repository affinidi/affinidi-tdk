import 'package:drift/drift.dart';

import 'profiles.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    Profiles,
  ],
)

/// Database class to access drift tables
class Database extends _$Database {
  /// Constructor
  Database(super.e);

  /// Returns the current schema version
  @override
  int get schemaVersion => 1;
}
