part of 'dice_cubit.dart';

abstract class DiceState extends Equatable {
  const DiceState();
}

class DiceInitial extends DiceState {
  @override
  List<Object> get props => [];
}
