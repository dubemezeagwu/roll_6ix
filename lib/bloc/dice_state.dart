part of 'dice_cubit.dart';

abstract class DiceState extends Equatable{}

class DiceInitialState extends DiceState{
  @override
  List<Object?> get props => [];
}

class DiceLoadedState extends DiceState {

  final List<Player> players;
  DiceLoadedState(this.players);

  @override
  List<Object?> get props => [players];
}
