import 'package:bloc_app/bloc/counter_event.dart';
import 'package:bloc_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(count: 0, isIncreament: false)) {
    on<IncreamentCounter>(_increamentCounter);
    on<DecreamentCounter>(_decreamentCounter);
  }

  void _increamentCounter(IncreamentCounter event, Emitter<CounterState> emit) {
    emit(CounterState(
      count: state.count! + 1,
      isIncreament: true,
    ));
  }

  void _decreamentCounter(DecreamentCounter event, Emitter<CounterState> emit) {
    emit(CounterState(
      count: state.count! - 1,
      isIncreament: false,
    ));
  }
}
