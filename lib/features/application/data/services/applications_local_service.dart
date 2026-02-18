import '../../../../core/database/app_database.dart';

class ApplicationsLocalService {
  ApplicationsLocalService(this.db);
  final AppDatabase db;

  Stream<List<ApplicationTableData>> watchAll() {
    return db.select(db.applicationTable).watch();
  }

  Future<ApplicationTableData?> findById(String id) {
    return (db.select(
      db.applicationTable,
    )..where((t) => t.id.equals(id))).getSingleOrNull();
  }
}
