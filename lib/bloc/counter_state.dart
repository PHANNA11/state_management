part of 'counter_bloc.dart';

@immutable
class CounterState {
  int? number;
  CounterState({this.number});
}

class CounterInitial extends CounterState {
  CounterInitial() : super(number: 0);
}
