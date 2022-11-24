import 'package:flutter/material.dart';
import 'package:shoe_store/helper_functions/custom_clipper.dart';
import 'package:shoe_store/screens/product/components/color_options.dart';
import 'package:shoe_store/screens/product/components/ratings.dart';
import 'package:shoe_store/screens/product/display_page.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.size,
    required this.widget,
  }) : super(key: key);

  final Size size;
  final DetailsPage widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.75,
      width: size.width,
      child: ClipPath(
        clipper: const AppClipper(
          cornerSize: 50,
          diagonalHeight: 180,
          roundedBottom: false,
        ),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 180.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 300,
                child: Text(
                  widget.shoeModel.name,
                  style: const TextStyle(
                    fontSize: 32.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Rating(),
              const SizedBox(
                height: 24.0,
              ),
              const Text(
                'DETAILS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                widget.shoeModel.desc,
                style: const TextStyle(
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'COLOR OPTIONS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const ColorOptions()
            ],
          ),
        ),
      ),
    );
  }
}
