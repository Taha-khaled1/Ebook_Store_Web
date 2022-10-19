import 'package:flutter/material.dart';
import 'package:storebookweb/Responsev/enums/device_type.dart';
import 'package:storebookweb/Responsev/ui_components/info_widget.dart';
import '../../../constant.dart';
import '../componet/Bokks.dart';
import '../componet/Discount.dart';

class ShowBooKsection extends StatelessWidget {
  const ShowBooKsection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return InfoWidget(
      builder: (context, deviceInfo) {
        return deviceInfo.deviceType != DeviceType.Desktop
            ? Column(
                children: [
                  SizedBox(
                    width: deviceInfo.localWidth,
                    child: Padding(
                      padding: const EdgeInsets.only(left: kDefaultPadding),
                      child: Discount(textTheme: textTheme),
                    ),
                  ),
                  SizedBox(
                    height: deviceInfo.localWidth * 0.05,
                  ),
                  SizedBox(
                      //
                      width: deviceInfo.localWidth,
                      child: Books()),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: deviceInfo.localWidth * 0.35,
                    child: Padding(
                      padding: const EdgeInsets.only(left: kDefaultPadding),
                      child: Discount(textTheme: textTheme),
                    ),
                  ),
                  SizedBox(
                    width: deviceInfo.localWidth * 0.05,
                  ),
                  SizedBox(
                      //
                      width: deviceInfo.localWidth * 0.6,
                      child: Books()),
                ],
              );
      },
    );
  }
}
