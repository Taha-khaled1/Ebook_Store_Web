import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../widget/CustomButton.dart';

class Discount extends StatelessWidget {
  const Discount({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Up To 75% ',
          style: textTheme.headline3,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        SizedBox(
          //width: 600,
          child: Text(
            'Water is used by the body to remove toxins and waste products.'
            ' When there is less water in the body, the heart has to work harder to pump the oxygenated',
            style: textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        CustomButoon(
          number: 200.0,
          text: 'Shope Now',
        ),
      ],
    );
  }
}
