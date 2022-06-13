part of 'dice_cubit.dart';

abstract class DiceState extends Equatable{}

class DiceInitialState extends DiceState{
  @override
  List<Object?> get props => [];
}

class DiceLoadedState extends DiceState {

  String? diceOne;
  String? diceTwo;

  DiceLoadedState(this.diceOne, this.diceTwo);

  @override
  List<Object?> get props => [diceOne, diceTwo];
}
