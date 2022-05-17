import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:roll_6ix/utils/app_colors.dart';
import 'package:roll_6ix/utils/app_styles.dart';
import 'package:roll_6ix/utils/extensions.dart';
import 'package:roll_6ix/utils/size_config.dart';

class GameHome extends StatefulWidget {
  const GameHome({Key? key}) : super(key: key);

  @override
  State<GameHome> createState() => _GameHomeState();
}

class _GameHomeState extends State<GameHome> {
  bool isPlayerTextVisible = false;
  @override
  void initState() {
    setState(() {
      isPlayerTextVisible = false;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: Text("ROLL 6IX",style: AppStyles.regularBlack20,),
      ),
      backgroundColor: AppColors.backgroundColor,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PLAYER 1 WINS", style: AppStyles.regularWhite20,),
            SizedBox(height: 20.h,),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.cream,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              height: 300.h,
              width: 350.h,
              child: Padding(
                padding:  EdgeInsets.all(12.0.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DottedBorder(
                          padding: const EdgeInsets.all(6),
                            radius: const Radius.circular(12),
                            borderType: BorderType.RRect,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(30)),
                              child: SizedBox(
                                height: 100.h,
                                  width: 100.h,
                                  child: const Center(
                                      child: Text("P1")
                                  )
                              ),
                            )
                        ),
                        const Text("VS"),
                        DottedBorder(
                            padding: const EdgeInsets.all(6),
                            radius: const Radius.circular(12),
                            borderType: BorderType.RRect,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(30)),
                              child: SizedBox(
                                  height: 100.h,
                                  width: 100.h,
                                  child: const Center(
                                      child: Text("P2")
                                  )
                              ),
                            )
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          width: 2.5,
                          color: Colors.white
                        )
                      ),
                      height: 40,
                      width: 150,
                      child: RawMaterialButton(
                        onPressed: (){},
                        fillColor: AppColors.darkOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text("START GAME", style: TextStyle(color: AppColors.darkerTextColor)),

                      )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
