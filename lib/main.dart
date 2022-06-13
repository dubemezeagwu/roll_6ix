import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roll_6ix/bloc/dice_cubit.dart';
import 'package:roll_6ix/presentation/game_home.dart';
import 'package:roll_6ix/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DiceCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: AppColors.backgroundColor,
          primarySwatch: Colors.blue,
        ),
        home: const GameHome(),
      ),
    );
  }
}

