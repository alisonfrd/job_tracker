import 'package:drift/drift.dart';
import 'package:job_tracker/app/features/applications/domain/application.dart';
import 'package:job_tracker/core/database/app_database.dart';
import 'package:job_tracker/features/application/data/services/applications_local_service.dart';

import '../../../../app/features/applications/domain/application.dart';

class ApplicationsRepository {
  ApplicationsRepository(this._service);
  final ApplicationsLocalService _service;

  Stream<List<Application>> watchAll() {
    return _service.watchAll().map((rows) => rows.map(_toDomain).toList());
  }

  Future<Application?> findById(String id) async {
    final row = await _service.findById(id);
    return row == null ? null : _toDomain(row);
  }

  Future<void> save(Application app) async {
    final now = DateTime.now();
    final toSave = app.copyWith(updatedAt: now);

    _service.upsert(_toCompanion(toSave));
  }

  Future<void> remove(String id) async {
    await _service.deleteById(id);
  }

  // ------ Mapping -------
  Application _toDomain(ApplicationTableData r) {
    return Application(
      id: r.id,
      companyName: r.companyName,
      positionTitle: r.positionTitle,
      status: ApplicationStatus.values.byName(r.status),
      notes: r.notes,
      salaryCents: r.salaryCents,
      appliedAt: r.appliedAt,
      employmentType: EmploymentType.values.byName(r.employmentType),
      locationScope: LocationScope.values.byName(r.locationScope),
      createdAt: r.createdAt,
      updatedAt: r.updatedAt,
    );
  }

  ApplicationTableCompanion _toCompanion(Application a) {
    return ApplicationTableCompanion(
      id: Value(a.id),
      companyName: Value(a.companyName),
      positionTitle: Value(a.positionTitle),
      status: Value(a.status.name),
      appliedAt: Value(a.appliedAt),
      notes: Value(a.notes),
      salaryCents: Value(a.salaryCents),
      employmentType: Value(a.employmentType.name),
      locationScope: Value(a.locationScope.name),
      createdAt: Value(a.createdAt),
      updatedAt: Value(a.updatedAt),
    );
  }
}
