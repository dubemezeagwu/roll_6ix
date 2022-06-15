part of 'dice_cubit.dart';

abstract class DiceState extends Equatable {}

class DiceInitialState extends DiceState {
  @override
  List<Object?> get props => [];
}

class DiceLoadedState extends DiceState {
  final Player player1;
  final Player player2;
  DiceLoadedState({
    required this.player1,
    required this.player2,
  });

  String get winningStatus {
    return identical(player1.numberPlayed, player2.numberPlayed)
        ? 'It is a Tie'
        : player1.numberPlayed > player2.numberPlayed ? 'Player One WINS!' : 'Player Two WINS!';
    //  player1.  ? 'It is a Tie' :
  }

  // Player
  @override
  List<Object?> get props => [player1, player2];
}
