import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/counter/counter.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// [StatelessWidget] 是負責向 [CounterView] 提供 [CounterCubit] 實例。
/// {@endtemplate}


class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}
