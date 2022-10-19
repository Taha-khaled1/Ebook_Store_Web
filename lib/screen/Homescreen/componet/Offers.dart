import 'package:flutter/material.dart';

import '../../../Responsev/models/device_info.dart';
import '../../../constant.dart';
import 'CustomTile.dart';

class Offers extends StatelessWidget {
  const Offers({
    Key? key,
    required this.deviceInfo,
  }) : super(key: key);
  final DeviceInfo deviceInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: deviceInfo.localWidth,
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          SizedBox(
            width: widthListtile,
            child: CustomTile(
                icon: Icons.flight,
                subtitle: 'Free Shipping',
                title: 'Order Over 100\$'),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: widthListtile,
            child: CustomTile(
                icon: Icons.flight,
                subtitle: 'Free Shipping',
                title: 'Order Over 100\$'),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: widthListtile,
            child: CustomTile(
                icon: Icons.flight,
                subtitle: 'Free Shipping',
                title: 'Order Over 100\$'),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: widthListtile,
            child: CustomTile(
                icon: Icons.flight,
                subtitle: 'Free Shipping',
                title: 'Order Over 100\$'),
          ),
        ],
      ),
    );
  }
}
