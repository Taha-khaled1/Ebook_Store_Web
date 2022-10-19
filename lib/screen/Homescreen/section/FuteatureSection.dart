import 'package:flutter/material.dart';

import '../../../Models/ModelbuteafulBook.dart';
import '../componet/BueatfukBook.dart';
import '../componet/CustomtitelFeature.dart';

class FueatureSection extends StatelessWidget {
  const FueatureSection({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomtitelFeature(textTheme: textTheme, text: 'Feature Books'),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 350,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: detalisbook.length,
            itemBuilder: (BuildContext context, int index) {
              return BueatfukBook(
                image: detalisbook[index].imag,
                namebook: detalisbook[index].name,
                undernamebook: detalisbook[index].price,
              );
            },
          ),
        ),
      ],
    );
  }
}
