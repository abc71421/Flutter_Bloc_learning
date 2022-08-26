import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/counter_observer.dart';
import 'package:flutter_bloc_test/app.dart';


void addLog(String message){}

void main() {
  Bloc.observer = CounterObserver();
  // runApp(const CounterApp());
  runApp(const MaterialApp(
    home: CounterApp(),
  ));

}
