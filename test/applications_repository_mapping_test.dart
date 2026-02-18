import 'package:flutter_test/flutter_test.dart';
import 'package:job_tracker/app/features/applications/domain/application.dart';

void main() {
  test('enum serializable uses name', () {
    expect(ApplicationStatus.applied.name, 'applied');
    expect(EmploymentType.clt.name, 'clt');
    expect(LocationScope.national.name, 'national');

    expect(ApplicationStatus.values.byName('offer'), ApplicationStatus.offer);
  });
}
