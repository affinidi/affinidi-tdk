import 'package:drift/drift.dart';

/// Table definition to hold profiles
@DataClassName('Profile')
class Profiles extends Table {
  /// A profile identifier
  IntColumn get id => integer().autoIncrement()();

  /// A profile name
  TextColumn get name => text()();

  /// A profile description
  TextColumn get description => text().nullable()();
}
