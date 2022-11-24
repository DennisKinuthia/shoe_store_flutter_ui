import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RatingBar.builder(
          initialRating: 3.0,
          minRating: 1.0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 20.0,
          itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
          onRatingUpdate: (rating) {
            //TODO: implement rating
          },
          itemBuilder: (context, _) {
            return const Icon(
              Icons.star,
              color: Colors.amber,
            );
          },
        ),
        const SizedBox(
          width: 16.0,
        ),
        const Text(
          '134 Reviews',
          style: TextStyle(
            color: Colors.black26,
          ),
        )
      ],
    );
  }
}
