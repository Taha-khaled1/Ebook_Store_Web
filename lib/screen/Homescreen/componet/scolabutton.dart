import 'package:flutter/material.dart';

class scolabutton extends StatelessWidget {
  const scolabutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        IconButton(onPressed: () {}, icon: Icon(Icons.add_chart)),
        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
      ],
    );
  }
}
