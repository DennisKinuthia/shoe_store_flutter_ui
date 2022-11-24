import 'package:flutter/material.dart';
import 'package:shoe_store/utils/constants.dart';

class ColorOptions extends StatelessWidget {
  const ColorOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        ColorOption(
          color: AppColors.blueColor,
        ),
        ColorOption(
          color: AppColors.greenColor,
        ),
        ColorOption(
          color: AppColors.orangeColor,
        ),
        ColorOption(
          color: AppColors.redColor,
        ),
      ],
    );
  }
}

class ColorOption extends StatelessWidget {
  const ColorOption({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      margin: const EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    );
  }
}
