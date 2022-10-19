import 'package:flutter/material.dart';

class Customtextfiled extends StatelessWidget {
  Customtextfiled({
    Key? key,
    required this.labeltext,
    required this.hinttext,
    required this.number,
  }) : super(key: key);
  final String labeltext, hinttext;
  final double number;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: number, vertical: 15),
        child: TextFormField(
          decoration: InputDecoration(
            label: Text(labeltext),
            hintText: hinttext,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
