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
    extends
        $StreamNotifierProvider<
          ApplicationsViewModel,
          ApplicationsScreenState
        > {
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
    r'9c9abc907c84529656d23b5d61652c1d91658dba';

abstract class _$ApplicationsViewModel
    extends $StreamNotifier<ApplicationsScreenState> {
  Stream<ApplicationsScreenState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<ApplicationsScreenState>,
              ApplicationsScreenState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<ApplicationsScreenState>,
                ApplicationsScreenState
              >,
              AsyncValue<ApplicationsScreenState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
