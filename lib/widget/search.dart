import 'package:flutter/material.dart';

import '../constant.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 54,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 50,
            color: Colors.green.withOpacity(0.23),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.green.withOpacity(0.5),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
