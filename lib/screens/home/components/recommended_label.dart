// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoe_store/utils/constants.dart';

class RecommendedLabel extends StatelessWidget {
  const RecommendedLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            'JUST FOR YOU',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'VIEW ALL',
            style: TextStyle(
              color: AppColors.greenColor,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
