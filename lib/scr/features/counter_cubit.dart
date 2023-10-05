import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void inCerement() => emit(state +1);
  void decrement() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change.currentState);
  }
}
