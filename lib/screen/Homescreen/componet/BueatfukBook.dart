import 'package:flutter/material.dart';

import '../../../widget/CustomButton.dart';

class BueatfukBook extends StatelessWidget {
  final String image;
  final String namebook;
  final String undernamebook;
  // double reating;
  BueatfukBook(
      {required this.image,
      required this.namebook,
      // required this.reating,
      required this.undernamebook});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 8),
      child: Container(
        height: 300,
        width: 275,
        child: Stack(
          children: [
            Positioned(
              top: 15,
              right: 15,
              bottom: 10,
              left: 15,
              child: Container(
                height: 235,
                width: 215,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -20,
              child: Image.asset(
                image,
                width: 165,
              ),
            ),
            Positioned(
              bottom: 50,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                      ),
                      children: [
                        TextSpan(
                            text: '$namebook\n',
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            )),
                        TextSpan(
                          text: '\$ $undernamebook',
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 59,
              bottom: 0,
              child: CustomButoon(number: 150, text: 'Buy now'),
            ),
          ],
        ),
      ),
    );
  }
}
