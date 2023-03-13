import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count; // getter to acces the private variable _count

  void incrementCount() {
    _count = _count + 1;
    notifyListeners();
  }
}
