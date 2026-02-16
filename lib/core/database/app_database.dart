import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

class ApplicationTable extends Table {
  TextColumn get id => text()();

  TextColumn get companyName => text()();
  TextColumn get positionTitle => text()();

  TextColumn get status => text()(); //ApplicationStatus (TEXT)
  DateTimeColumn get appliedAt => dateTime()();

  TextColumn get notes => text().nullable()();
  IntColumn get salaryCents => integer().nullable()();

  TextColumn get employmentType => text()();
  TextColumn get locationScope => text()();

  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [ApplicationTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
    : super(
        driftDatabase(
          name: 'job_tracker_db',
          native: const DriftNativeOptions(
            databaseDirectory: getApplicationSupportDirectory,
          ),
        ),
      );

  @override
  int get schemaVersion => 1;
}
