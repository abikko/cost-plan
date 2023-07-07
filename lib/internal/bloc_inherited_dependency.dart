import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocInheritedDependency extends InheritedWidget {
  final Bloc bloc;
  const BlocInheritedDependency(
    this.bloc, {
    super.key,
    required super.child,
  });

  static BlocInheritedDependency? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<BlocInheritedDependency>();
  }

  static BlocInheritedDependency of(BuildContext context) {
    final BlocInheritedDependency? result = maybeOf(context);
    assert(result != null, 'BlocInheritedDependency not registered');

    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return identityHashCode(oldWidget) == identityHashCode(this);
  }
}
