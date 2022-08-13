import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/counter/counter.dart';


/// {@template app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// [MaterialApp] 將 `home` 設置為 [CounterPage]。
/// {@endtemplate}


class CounterApp extends MaterialApp {
  /// {@macro counter_app}
  const CounterApp({super.key}) : super(home: const CounterPage());
}