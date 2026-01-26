// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'range_toggle_button.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RagneToggleState)
const ragneToggleStateProvider = RagneToggleStateProvider._();

final class RagneToggleStateProvider
    extends $NotifierProvider<RagneToggleState, bool> {
  const RagneToggleStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ragneToggleStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ragneToggleStateHash();

  @$internal
  @override
  RagneToggleState create() => RagneToggleState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$ragneToggleStateHash() => r'4359f32f016e577b00ba547c887de79623a282cb';

abstract class _$RagneToggleState extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
