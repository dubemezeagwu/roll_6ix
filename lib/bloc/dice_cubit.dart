import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:roll_6ix/data/player.dart';
import 'dart:math';

import 'package:roll_6ix/utils/app_assets.dart';

part 'dice_state.dart';

class DiceCubit extends Cubit<DiceState> {
  DiceCubit() : super(DiceInitialState());

  Player? _player1;
  Player? get player1 => _player1;

  ///
  Player? _player2;
  Player? get player2 => _player2;

  ///
  void startGameRound() {
    final player1Number = Random().nextInt(6);
    final player2Number = Random().nextInt(6);

    _player1 = Player(
      dice: AppAssets.diceArray[player1Number],
      numberPlayed: player1Number,
    );
    _player2 = Player(
      dice: AppAssets.diceArray[player2Number],
      numberPlayed: player2Number,
    );
    if (_player1 == null || _player2 == null) {
      // emit error state
    }
    emit(
      DiceLoadedState(
        player1: _player1!,
        player2: player2!,
      ),
    );
  }
}
