import 'package:flutter/material.dart';
import 'package:shoe_store/helper_functions/custom_clipper.dart';
import 'package:shoe_store/utils/constants.dart';
import 'package:shoe_store/utils/data.dart';
import 'package:shoe_store/utils/flutter_icons.dart';

ClipPath buildBackground(int index, double width) {
  return ClipPath(
    clipper: const AppClipper(
      cornerSize: 25.0,
      diagonalHeight: 100,
    ),
    child: Container(
      color: shoes[index].color,
      width: width,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(
                color: AppColors.greenColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                ),
              ),
              child: const Center(
                child: Icon(
                  FlutterIcons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Icon(
                    shoes[index].brand == 'Nike'
                        ? FlutterIcons.nike
                        : FlutterIcons.converse,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                SizedBox(
                  width: 125,
                  child: Text(
                    shoes[index].name,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'AED ${shoes[index].price}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
