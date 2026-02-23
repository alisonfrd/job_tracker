import 'dart:async';

import 'package:job_tracker/app/features/applications/domain/application.dart';
import 'package:job_tracker/features/application/data/repositories/applications_repository.dart';

class FakeApplicationsRepository extends ApplicationsRepository {
  FakeApplicationsRepository(super.service)
    : _controller = StreamController.broadcast();

  final StreamController<List<Application>> _controller;
  final List<Application> saved = [];

  @override
  Stream<List<Application>> watchAll() => _controller.stream;

  void emit(List<Application> apps) => _controller.add(apps);

  @override
  Future<void> save(Application app) async {
    saved.add(app);
    emit(List<Application>.from(saved));
  }

  Future<void> dispose() async => _controller.close();
}
