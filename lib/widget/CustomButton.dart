import 'package:flutter/material.dart';

class CustomButoon extends StatelessWidget {
  CustomButoon({
    Key? key,
    required this.text,
    required this.number,
  }) : super(key: key);
  final double number;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: number,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.green[300],
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 21,
          ),
        ),
      ),
    );
  }
}
