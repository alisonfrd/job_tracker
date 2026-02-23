import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:job_tracker/app/features/applications/domain/application.dart';
import 'package:job_tracker/features/application/data/applications_providers.dart';
import 'package:job_tracker/features/application/data/repositories/i_applications_repository.dart';
import 'package:job_tracker/features/application/presentation/viewmodels/applications_view_model.dart';
import 'package:riverpod/riverpod.dart';

class FakeRepo implements IApplicationsRepository {
  final _controller = StreamController<List<Application>>.broadcast();
  final saved = <Application>[];

  @override
  Future<Application?> findById(String id) async {
    for (final a in saved) {
      if (a.id == id) return a;
    }

    return null;
  }

  @override
  Future<void> remove(String id) async {
    saved.removeWhere((p) => p.id == id);
    emit(List<Application>.from(saved));
  }

  @override
  Future<void> save(Application app) async {
    saved.add(app);
    emit(List<Application>.from(saved));
  }

  @override
  Stream<List<Application>> watchAll() => _controller.stream;

  void emit(List<Application> apps) => _controller.add(apps);
}

void main() {
  test('createApplication', () async {
    final repo = FakeRepo();

    final container = ProviderContainer(
      overrides: [applicationsRepositoryProvider.overrideWithValue(repo)],
    );

    addTearDown(container.dispose);

    //start listening to build the notification
    container.listen(
      applicationsViewModelProvider,
      (_, __) {},
      fireImmediately: true,
    );

    final vm = container.read(applicationsViewModelProvider.notifier);

    await vm.createApplication(
      companyName: 'Acme',
      positionTitle: 'Flutter dev',
      employmentType: EmploymentType.clt,
      locationScope: LocationScope.national,
      salaryCents: 5000 * 100,
    );

    expect(repo.saved.length, 1);
    expect(repo.saved.first.companyName, 'Acme');
  });
}
