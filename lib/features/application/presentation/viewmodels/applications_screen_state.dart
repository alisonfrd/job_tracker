import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:job_tracker/app/features/applications/domain/application.dart';

part 'applications_screen_state.freezed.dart';

@freezed
sealed class ApplicationsScreenState with _$ApplicationsScreenState {
  const factory ApplicationsScreenState({
    required List<Application> applications,
  }) = _ApplicationScreenState;
}
