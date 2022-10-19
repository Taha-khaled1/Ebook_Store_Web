import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Responsev/ui_components/info_widget.dart';
import '../../controller/Homecontroller.dart';
import '../../widget/CustomButton.dart';
import '../../widget/Customtextfiled.dart';

class SiginIn extends StatelessWidget {
  const SiginIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: 560,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sigin in",
                style: textTheme.headline4,
              ),
              Spacer(),
              Customtextfiled(
                number: deviceInfo.localWidth * 0.08,
                hinttext: 'Enter your email',
                labeltext: 'User name',
              ),

              Customtextfiled(
                number: deviceInfo.localWidth * 0.08,
                hinttext: 'Enter your password',
                labeltext: 'User Password',
              ),

              /////
              Consumer<Homecontroller>(
                builder: (context, acss, child) {
                  return CheckboxListTile(
                    value: acss.Changevalue,
                    onChanged: (value) {
                      acss.stateChackBox(value);
                    },
                  );
                },
              ),
              CustomButoon(
                number: deviceInfo.localWidth * 0.8,
                text: 'Sigin Now',
              ),
              Spacer(),
            ],
          );
        },
      ),
    );
  }
}
