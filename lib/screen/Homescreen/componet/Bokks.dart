import 'package:flutter/material.dart';

import '../../../constant.dart';

class Books extends StatelessWidget {
  const Books({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      alignment: Alignment.topRight,
      width: 650,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagesBook.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Image.asset(imagesBook[index]),
                );
              },
            ),
          ),
          SizedBox(
            child: Image.asset('assets/images/stand.png'),
          ),
        ],
      ),
    );
  }
}
