import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:roll_6ix/data/player.dart';
import 'dart:math';

import 'package:roll_6ix/utils/app_assets.dart';

part 'dice_state.dart';

class DiceCubit extends Cubit<DiceState> {
  DiceCubit() : super(DiceInitialState());

  final List<Player> listOfPlayers= [ playerOne,playerTwo];
  late var winningStatus;

  void startGameRound () {
    final gameResults = [];

    listOfPlayers.forEach((player) {
      final playerNumber = Random().nextInt(5);
      gameResults.add(playerNumber);
      player.dice = AppAssets.diceArray[playerNumber];
    });

    displayWinner(gameResults);
  }

  void displayWinner (List gameResults){
    var winner = gameResults[0] != gameResults[1]
        ? "Player ${gameResults.indexOf(gameResults.reduce((value, element) => max)) + 1 }"
        : "It is a Tie";

    winningStatus = winner;
    print(winningStatus);
  }
}
