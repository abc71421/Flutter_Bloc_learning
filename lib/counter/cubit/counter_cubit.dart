import 'package:bloc/bloc.dart';
import 'dart:math' as math;

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// [Cubit] 管理 [int] 作為它的狀態。
/// {@endtemplate}

class CounterCubit extends Cubit<int> {
  /// {@macro counter_cubit}
  CounterCubit() : super(0);

  /// Add 1 to the current state.
  void increment() => emit(state + 1);

  /// Subtract 1 from the current state.
  void decrement() => emit(state - 1);

  /// square the current state.
  void power() => emit(math.pow(state, 2).toInt());
}
