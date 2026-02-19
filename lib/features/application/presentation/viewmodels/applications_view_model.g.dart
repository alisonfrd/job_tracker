// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applications_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ApplicationsViewModel)
final applicationsViewModelProvider = ApplicationsViewModelProvider._();

final class ApplicationsViewModelProvider
    extends $StreamNotifierProvider<ApplicationsViewModel, List<Application>> {
  ApplicationsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'applicationsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$applicationsViewModelHash();

  @$internal
  @override
  ApplicationsViewModel create() => ApplicationsViewModel();
}

String _$applicationsViewModelHash() =>
    r'c25b23fe3f9b972d08ab2e56d66841fbb7fca1a8';

abstract class _$ApplicationsViewModel
    extends $StreamNotifier<List<Application>> {
  Stream<List<Application>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Application>>, List<Application>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Application>>, List<Application>>,
              AsyncValue<List<Application>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
