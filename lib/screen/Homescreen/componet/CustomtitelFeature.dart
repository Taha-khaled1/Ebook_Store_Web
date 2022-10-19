import 'package:flutter/material.dart';

class CustomtitelFeature extends StatelessWidget {
  const CustomtitelFeature(
      {Key? key, required this.textTheme, required this.text})
      : super(key: key);

  final TextTheme textTheme;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          color: Colors.black,
        )),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1),
          ),
          child: Text(
            text,
            style: textTheme.headline4,
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
