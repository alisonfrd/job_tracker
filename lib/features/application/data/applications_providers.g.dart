// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applications_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(applicationsLocalService)
final applicationsLocalServiceProvider = ApplicationsLocalServiceProvider._();

final class ApplicationsLocalServiceProvider
    extends
        $FunctionalProvider<
          ApplicationsLocalService,
          ApplicationsLocalService,
          ApplicationsLocalService
        >
    with $Provider<ApplicationsLocalService> {
  ApplicationsLocalServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'applicationsLocalServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$applicationsLocalServiceHash();

  @$internal
  @override
  $ProviderElement<ApplicationsLocalService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ApplicationsLocalService create(Ref ref) {
    return applicationsLocalService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApplicationsLocalService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApplicationsLocalService>(value),
    );
  }
}

String _$applicationsLocalServiceHash() =>
    r'47d217a0917f8596145aecab0cf720a0d1c02ab9';

@ProviderFor(applicationsRepository)
final applicationsRepositoryProvider = ApplicationsRepositoryProvider._();

final class ApplicationsRepositoryProvider
    extends
        $FunctionalProvider<
          IApplicationsRepository,
          IApplicationsRepository,
          IApplicationsRepository
        >
    with $Provider<IApplicationsRepository> {
  ApplicationsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'applicationsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$applicationsRepositoryHash();

  @$internal
  @override
  $ProviderElement<IApplicationsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IApplicationsRepository create(Ref ref) {
    return applicationsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IApplicationsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IApplicationsRepository>(value),
    );
  }
}

String _$applicationsRepositoryHash() =>
    r'8c999bf7584eced10aa1e46312188780b15f9364';

@ProviderFor(applicationsStream)
final applicationsStreamProvider = ApplicationsStreamProvider._();

final class ApplicationsStreamProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Application>>,
          List<Application>,
          Stream<List<Application>>
        >
    with
        $FutureModifier<List<Application>>,
        $StreamProvider<List<Application>> {
  ApplicationsStreamProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'applicationsStreamProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$applicationsStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<Application>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Application>> create(Ref ref) {
    return applicationsStream(ref);
  }
}

String _$applicationsStreamHash() =>
    r'cb6fc7f238ff4aae79579e72433f939756b2aa0c';
