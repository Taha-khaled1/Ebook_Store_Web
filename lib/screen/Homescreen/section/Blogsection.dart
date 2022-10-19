import 'package:flutter/material.dart';

import '../../../Models/ModelsBlog.dart';
import '../componet/BlogDesig.dart';
import '../componet/CustomtitelFeature.dart';

class Blogsection extends StatelessWidget {
  const Blogsection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        CustomtitelFeature(textTheme: textTheme, text: 'Our Blog'),
        SizedBox(
          height: 480,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ListModelsBlog.length,
            itemBuilder: (BuildContext context, int index) {
              return BlogDesign(
                descrbtion: ListModelsBlog[index].descrbtion,
                imag: ListModelsBlog[index].imag,
                title: ListModelsBlog[index].title,
              );
            },
          ),
        ),
      ],
    );
  }
}
