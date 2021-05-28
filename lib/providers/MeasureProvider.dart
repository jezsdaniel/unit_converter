import 'package:flutter/material.dart';
import 'package:unit_converter/utils/converters.dart';
import 'package:unit_converter/utils/utils.dart';
import 'package:units_converter/Length.dart';

class MeasureProvider with ChangeNotifier {
  int _inputMeasure = 0;

  LENGTH? from = LENGTH.meters;
  LENGTH? to = LENGTH.meters;

  String get inputMeasure => addCommasToNumber(_inputMeasure);

  String? get outputMeasure =>
      addCommasToNumber((convertLenght(from, to, _inputMeasure)));

  void changeFrom(LENGTH? unit) {
    from = unit;
    notifyListeners();
  }

  void changeTo(LENGTH? unit) {
    to = unit;
    notifyListeners();
  }

  void addNumber(int number) {
    int newMeasure = _inputMeasure * 10 + number;
    if (newMeasure <= 999999999) {
      _inputMeasure = newMeasure;
    }
    notifyListeners();
  }

  void deleteNumber() {
    _inputMeasure = _inputMeasure ~/ 10;
    notifyListeners();
  }

  void clear() {
    _inputMeasure = 0;
    notifyListeners();
  }
}
