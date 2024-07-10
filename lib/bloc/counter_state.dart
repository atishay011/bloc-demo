import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int? count;
  final bool isIncreament;
  const CounterState({this.count, required this.isIncreament});

  @override
  List<Object?> get props => [count];
}

class CounterStateLoading extends CounterState {
  const CounterStateLoading(bool isIncreament) : super(isIncreament: isIncreament);
}

class CounterStateLoaded extends CounterState {
  const CounterStateLoaded(int count, bool isIncreament) : super(count: count, isIncreament: isIncreament);
}
