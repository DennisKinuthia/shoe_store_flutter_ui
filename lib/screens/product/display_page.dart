// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoe_store/helper_functions/custom_clipper.dart';
import 'package:shoe_store/models/product.dart';
import 'package:shoe_store/screens/product/components/add_to_cart.dart';
import 'package:shoe_store/screens/product/components/color_options.dart';
import 'package:shoe_store/screens/product/components/description.dart';
import 'package:shoe_store/screens/product/components/ratings.dart';
import 'package:shoe_store/utils/constants.dart';
import 'package:shoe_store/utils/flutter_icons.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.shoeModel});

  final Product shoeModel;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: widget.shoeModel.color,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: widget.shoeModel.color,
        elevation: 0,
        title: const Text('CATEGORIES'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(FlutterIcons.leftOpen1),
        ),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: Description(size: size, widget: widget),
            ),
            Positioned(
              bottom: 0,
              child: AddToCart(price: widget.shoeModel.price),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Hero(
                tag: 'hero${widget.shoeModel.imgPath}',
                child: Transform.rotate(
                  angle: -pi / 7,
                  child: Image(
                    width: size.width * 0.85,
                    image:
                        AssetImage('assets/images/${widget.shoeModel.imgPath}'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
