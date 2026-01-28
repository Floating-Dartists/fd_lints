import 'dart:async';

import 'package:analysis_server_plugin/plugin.dart';
import 'package:analysis_server_plugin/registry.dart';
import 'package:fd_lints/src/lints/avoid_as.dart';
import 'package:fd_lints/src/lints/avoid_non_null_assertion.dart';
import 'package:fd_lints/src/lints/do_not_mutate_unmodifiable_list_view.dart';
import 'package:fd_lints/src/lints/do_not_mutate_unmodifiable_map_view.dart';
import 'package:fd_lints/src/lints/do_not_mutate_unmodifiable_set_view.dart';

/// Entry point for the `_FDLintsPlugin`.
///
/// Include the rules:
/// - [AvoidAs]
/// - [AvoidNonNullAssertion]
/// - [DoNotMutateUnmodifiableListView]
/// - [DoNotMutateUnmodifiableMapView]
/// - [DoNotMutateUnmodifiableSetView]
final plugin = _FDLintsPlugin();

class _FDLintsPlugin extends Plugin {
  @override
  String get name => 'fd_lints';

  @override
  FutureOr<void> register(PluginRegistry registry) {
    registry
      ..registerWarningRule(AvoidAs())
      ..registerWarningRule(AvoidNonNullAssertion())
      ..registerWarningRule(DoNotMutateUnmodifiableListView())
      ..registerWarningRule(DoNotMutateUnmodifiableMapView())
      ..registerWarningRule(DoNotMutateUnmodifiableSetView());
  }
}
