import 'package:flutter/material.dart';
import 'package:storebookweb/Responsev/enums/device_type.dart';
import 'package:storebookweb/Responsev/ui_components/info_widget.dart';
import 'package:storebookweb/widget/Menu.dart';
import '../../widget/Nav_bar.dart';
import 'componet/Offers.dart';
import 'section/Blogsection.dart';
import 'section/FeedBacksection.dart';
import 'section/FuteatureSection.dart';
import 'section/ShowBooksection.dart';
import 'section/Topsection.dart';

// ignore: must_be_immutable
class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);
  ScrollController scrollController = ScrollController();

  scrollToBottom() {
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return InfoWidget(
      builder: (context, deviceInfo) {
        return Scaffold(
          bottomNavigationBar:
              deviceInfo.deviceType != DeviceType.Desktop ? Navbar() : null,
          body: Center(
            child: Container(
              constraints: const BoxConstraints(
                maxHeight: 1100,
                maxWidth: 1400,
              ),
              width: double.infinity,
              height: double.infinity,
              // color: Colors.amber,
              child: InfoWidget(
                builder: (context, deviceInfo) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Topsection(textTheme: textTheme),
                        SizedBox(
                          height: 30,
                        ),
                        deviceInfo.deviceType != DeviceType.Desktop
                            ? SizedBox()
                            : const Menu(),
                        SizedBox(
                          height: 30,
                        ),
                        ShowBooKsection(), //done

                        Offers(
                          deviceInfo: deviceInfo,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        FueatureSection(textTheme: textTheme),
                        SizedBox(
                          height: 30,
                        ),
                        Blogsection(),
                        SizedBox(
                          height: 30,
                        ),
                        FeedBacksection(textTheme: textTheme),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
