import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);
  final String title, subtitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 40,
        color: Colors.green,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
