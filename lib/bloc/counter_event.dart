import 'package:equatable/equatable.dart';

class CounterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class IncreamentCounter extends CounterEvent {
  IncreamentCounter();
}

class DecreamentCounter extends CounterEvent {
  DecreamentCounter();
}
