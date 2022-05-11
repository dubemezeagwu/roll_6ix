import 'package:roll_6ix/utils/size_config.dart';

extension SizeExtension on num {
  double get h => SizeConfig.getHeight(this.toDouble());

  double get w => SizeConfig.getWidth(this.toDouble());

  double get sp => SizeConfig.getTextSize(this.toDouble());
}