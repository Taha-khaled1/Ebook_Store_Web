import 'package:flutter/material.dart';

import '../../../Responsev/ui_components/info_widget.dart';
import '../../../widget/CustomButton.dart';

class BlogDesign extends StatelessWidget {
  const BlogDesign({
    Key? key,
    required this.imag,
    required this.title,
    required this.descrbtion,
  }) : super(key: key);
  final String imag, title, descrbtion;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
      child: Container(
        width: 440,
        height: 480,
        color: Colors.grey[200],
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  child: SizedBox(
                    width: deviceInfo.localWidth,
                    height: deviceInfo.localHeight * 0.5,
                    child: Image.asset(
                      imag,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  title,
                  style: textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    descrbtion,
                    style: textTheme.headline6,
                  ),
                ),
                CustomButoon(text: 'ReadMore', number: 200)
              ],
            );
          },
        ),
      ),
    );
  }
}
