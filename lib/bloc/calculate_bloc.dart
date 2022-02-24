import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'calculate_event.dart';
part 'calculate_state.dart';

class CalculateBloc extends Bloc<CalculateEvent, CalculateState> {
  CalculateBloc() : super(CalculateInitial()) {
    on<CalculatedEvent>((event, emit) {
      try {
        double a = double.parse(event.weight.toString());
        double b = double.parse(event.height.toString());
        double result = a / ((b * b) / 10000);
        if (result < 18.5) {
          emit(CalculatedState(
              "${result.toStringAsFixed(1)}, Kekurangan berat badan"));
        } else if (result > 18.5 && result < 24.9) {
          emit(CalculatedState(
              "${result.toStringAsFixed(1)}, Berat badan Normal"));
        } else if (result > 25 && result < 29.9) {
          emit(CalculatedState(
              "${result.toStringAsFixed(1)}, Kelebihan badan Normal"));
        } else if (result > 30) {
          emit(CalculatedState("${result.toStringAsFixed(1)}, Obesitas"));
        }
      } on FormatException {
        emit(CalculatedState("Format salah"));
      } catch (e) {
        emit(CalculateStateError(e.toString()));
      }
    });
  }
}
