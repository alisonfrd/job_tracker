import 'package:freezed_annotation/freezed_annotation.dart';

part 'application.freezed.dart';
part 'application.g.dart';

enum ApplicationStatus { applied, interview, offer, rejected }

enum EmploymentType { clt, pj }

enum LocationScope { national, international }

@freezed
sealed class Application with _$Application {
  const factory Application({
    required String id,
    required String companyName,
    required String positionTitle,
    required ApplicationStatus status,
    required DateTime appliedAt,
    String? notes,
    int? salaryCents,
    required EmploymentType employmentType,
    required LocationScope locationScope,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Application;

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);
}
