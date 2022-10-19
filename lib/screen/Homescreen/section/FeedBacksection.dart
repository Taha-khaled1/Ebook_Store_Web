import 'package:flutter/material.dart';

import '../../../Models/Modelsfeedback.dart';
import '../componet/CustomtitelFeature.dart';
import '../componet/Feedbackcard.dart';

class FeedBacksection extends StatelessWidget {
  const FeedBacksection({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomtitelFeature(textTheme: textTheme, text: 'Feed Back'),
        SizedBox(
          height: 350,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Listfeedback.length,
            itemBuilder: (BuildContext context, int index) {
              return FeedbackCard(
                  imge: Listfeedback[index].imge,
                  review: Listfeedback[index].review,
                  color: Listfeedback[index].color);
            },
          ),
        )
      ],
    );
  }
}
