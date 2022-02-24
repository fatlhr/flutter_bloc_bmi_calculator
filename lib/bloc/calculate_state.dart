part of 'calculate_bloc.dart';

@immutable
abstract class CalculateState extends Equatable {
  @override
  List<Object> get props => [];
}

class CalculateInitial extends CalculateState {
  // final String result;
  // CalculateInitial(this.result);

  // @override
  // List<Object> get props => super.props..addAll([result]);
}

class CalculatedState extends CalculateState {
  final String result;
  CalculatedState(this.result);

  @override
  List<Object> get props => super.props..addAll([result]);
}

class CalculateStateError extends CalculateState {
  final String mess;
  CalculateStateError(this.mess);

  @override
  List<Object> get props => super.props..addAll([mess]);
}
