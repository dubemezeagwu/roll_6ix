import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dice_state.dart';

class DiceCubit extends Cubit<DiceState> {
  DiceCubit() : super(DiceInitial());
}
