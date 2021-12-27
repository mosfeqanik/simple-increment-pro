import 'package:flutter/material.dart';

class Data extends ChangeNotifier{
  int value = 0;
  String title ="Flutter App with Provider";

  void incrementCounter() {
      value++;
      notifyListeners();
  }
}