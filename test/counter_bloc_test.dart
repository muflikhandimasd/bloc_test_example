import 'package:bloc_test_example/bloc/counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('Testing Counter BLoC', () {
    blocTest('Inisialisasi Counter BLoC',
        build: () => CounterBloc(), expect: () => []);
    blocTest('Add Event',
        build: () => CounterBloc(),
        act: (CounterBloc bloc) async {
          bloc.add(const Add(2));
        },
        expect: () => [2]);

    blocTest('Subtract Event',
        build: () => CounterBloc(),
        act: (CounterBloc bloc) async {
          bloc.add(const Subtract(2));
        },
        expect: () => [-2]);

    blocTest('Add & Subtract Event',
        build: () => CounterBloc(),
        act: (CounterBloc bloc) async {
          bloc.add(const Add(2));
          bloc.add(const Subtract(5));
        },
        expect: () => [2, -3]);
  });
}
