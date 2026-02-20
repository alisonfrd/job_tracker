import 'dart:async';

import 'package:job_tracker/core/database/utils/command.dart';
import 'package:job_tracker/features/application/presentation/viewmodels/applications_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../app/features/applications/domain/application.dart';
import '../../data/applications_providers.dart'
    show applicationsRepositoryProvider;

part 'applications_view_model.g.dart';

@riverpod
class ApplicationsViewModel extends _$ApplicationsViewModel {
  late final Command createCommand = Command();

  @override
  Stream<ApplicationsScreenState> build() {
    ref.onDispose(() {
      createCommand.dispose();
    });
    // ViewModel expõe o stream da lista; Riverpod gerencia o AsyncValue na UI.
    final repo = ref.watch(applicationsRepositoryProvider);
    return repo.watchAll().map(
      (apps) => ApplicationsScreenState(applications: apps),
    );
  }

  Future<void> addApplication({
    required String companyName,
    required String positionTitle,
  }) async {
    final repo = ref.read(applicationsRepositoryProvider);

    final now = DateTime.now();
    final app = Application(
      id: const Uuid().v4(),
      companyName: companyName,
      positionTitle: positionTitle,
      status: ApplicationStatus.applied,
      appliedAt: now,
      notes: null,
      salaryCents: null,
      employmentType: EmploymentType.clt,
      locationScope: LocationScope.national,
      createdAt: now,
      updatedAt: now,
    );

    await repo.save(app);
  }

  Future<void> createApplication({
    required String companyName,
    required String positionTitle,
    required EmploymentType employmentType,
    required LocationScope locationScope,
    int? salaryCents,
  }) async {
    return createCommand.run(() async {
      final repo = ref.read(applicationsRepositoryProvider);

      final now = DateTime.now();
      final app = Application(
        id: const Uuid().v4(),
        companyName: companyName,
        positionTitle: positionTitle,
        status: ApplicationStatus.applied,
        appliedAt: now,
        notes: null,
        salaryCents: salaryCents,
        employmentType: employmentType,
        locationScope: locationScope,
        createdAt: now,
        updatedAt: now,
      );

      await repo.save(app);
    });
  }
}
