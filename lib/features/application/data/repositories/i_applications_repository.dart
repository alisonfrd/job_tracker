import 'package:job_tracker/app/features/applications/domain/application.dart';

abstract interface class IApplicationsRepository {
  Stream<List<Application>> watchAll();
  Future<void> save(Application app);
  Future<void> remove(String id);
  Future<Application?> findById(String id);
}
