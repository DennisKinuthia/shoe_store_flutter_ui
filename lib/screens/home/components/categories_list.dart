import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shoe_store/screens/home/components/category_card_background.dart';
import 'package:shoe_store/screens/product/display_page.dart';
import 'package:shoe_store/utils/data.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        itemCount: shoes.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(shoeModel: shoes[index]),
                ),
              );
            },
            child: Container(
              width: 230.0,
              margin: const EdgeInsets.only(right: 16.0),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: buildBackground(index, 230),
                  ),
                  Positioned(
                    bottom: 130,
                    right: 10,
                    child: Hero(
                      tag: 'hero${shoes[index].imgPath}',
                      child: Transform.rotate(
                        angle: -pi / 9,
                        child: Image(
                          width: 200,
                          image: AssetImage(
                              'assets/images/${shoes[index].imgPath}'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
