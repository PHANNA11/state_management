part of 'counter_bloc.dart';

@immutable
class CounterEvent {}

class DecrementEvent extends CounterEvent {}

class IncrementEvent extends CounterEvent {}
