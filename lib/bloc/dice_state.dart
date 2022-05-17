part of 'dice_cubit.dart';

class DiceState extends Equatable {

  String? diceOne;
  String? diceTwo;

  DiceState(this.diceOne, this.diceTwo);

  @override
  List<Object?> get props => [diceOne, diceTwo];
}
