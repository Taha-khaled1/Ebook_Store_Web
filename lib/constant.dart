import 'package:flutter/material.dart';
import 'package:storebookweb/Responsev/enums/device_type.dart';
import 'package:storebookweb/Responsev/models/device_info.dart';

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: const Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);
List<String> menuItems = ['Home', 'Feature', 'Arrivals', 'Reviews', 'Contact'];
List<String> imagesBook = [
  'assets/images/book-1.png',
  'assets/images/book-2.png',
  'assets/images/book-3.png',
  'assets/images/book-4.png',
  'assets/images/book-5.png',
  'assets/images/book-6.png',
  'assets/images/book-7.png',
  'assets/images/book-8.png',
  'assets/images/book-9.png',
  'assets/images/book-10.png',
];

double whatsizesearchbar(DeviceInfo type) {
  if (type.deviceType == DeviceType.Desktop) {
    return 570;
  } else if (type.deviceType == DeviceType.Tablet) {
    return 330;
  } else {
    return 0;
  }
}

double widthListtile = 210;
final GlobalKey<State<StatefulWidget>> Keyhomesection = GlobalKey();
final GlobalKey<State<StatefulWidget>> Keyaboutsection = GlobalKey();
final GlobalKey<State<StatefulWidget>> Keyskillsection = GlobalKey();
final GlobalKey<State<StatefulWidget>> KeyRecentworksection = GlobalKey();
final GlobalKey<State<StatefulWidget>> KeyServicesection = GlobalKey();
final GlobalKey<State<StatefulWidget>> Keyconectsection = GlobalKey();
