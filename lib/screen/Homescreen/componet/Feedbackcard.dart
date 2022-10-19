import 'package:flutter/material.dart';

import '../../../constant.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard(
      {required this.imge, required this.review, required this.color});
  final String imge, review;
  final Color color;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: AnimatedContainer(
          alignment: Alignment.center,
          duration: duration,
          margin: EdgeInsets.only(top: kDefaultPadding * 3),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(0, -55),
                child: AnimatedContainer(
                  duration: duration,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 10),
                    boxShadow: [if (!isHover) kDefaultCardShadow],
                    image: DecorationImage(
                      image: AssetImage(widget.imge),
                    ),
                  ),
                ),
              ),
              Text(
                widget.review,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              SizedBox(height: kDefaultPadding * 2),
              Text(
                "Ronald Thompson",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
