import 'package:flutter/cupertino.dart';

class Homecontroller extends ChangeNotifier {
  bool? Changevalue = false;
  stateChackBox(value) {
    Changevalue = value;
    notifyListeners();
  }
}
