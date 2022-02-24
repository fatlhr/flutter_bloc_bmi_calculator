part of 'calculate_bloc.dart';

@immutable
abstract class CalculateEvent {}

class CalculatedEvent extends CalculateEvent {
  final String weight;
  final String height;
  final String age;
  CalculatedEvent(this.weight, this.height, this.age);
}
