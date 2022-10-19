import 'package:flutter/material.dart';
import 'package:storebookweb/Responsev/ui_components/info_widget.dart';

import '../../../constant.dart';
import '../../../widget/search.dart';
import '../componet/scolabutton.dart';

class Topsection extends StatelessWidget {
  const Topsection({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Row(
            children: [
              Text(
                'Ebookly',
                style: textTheme.headline4,
              ),
              Spacer(),
              SizedBox(
                width: whatsizesearchbar(deviceInfo),
                child: Searchbar(),
              ),
              scolabutton()
            ],
          ),
        );
      },
    );
  }
}
