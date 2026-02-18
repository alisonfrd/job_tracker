import 'package:job_tracker/app/features/applications/domain/application.dart';
import 'package:job_tracker/core/database/database_providers.dart';
import 'package:job_tracker/features/application/data/repositories/applications_repository.dart';
import 'package:job_tracker/features/application/data/services/applications_local_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'applications_providers.g.dart';

@Riverpod(keepAlive: true)
ApplicationsLocalService applicationsLocalService(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return ApplicationsLocalService(db);
}

@Riverpod(keepAlive: true)
ApplicationsRepository applicationsRepository(Ref ref) {
  final service = ref.watch(applicationsLocalServiceProvider);
  return ApplicationsRepository(service);
}

@riverpod
Stream<List<Application>> applicationsStream(Ref ref) {
  final repo = ref.watch(applicationsRepositoryProvider);
  return repo.watchAll();
}
