import 'package:units_converter/Length.dart';

num? convertLenght(LENGTH? from, LENGTH? to, int number) {
  var length = Length();

  length.convert(from!, number.toDouble());
  var unit = length.getUnit(to);

  return unit.value?.round();
}
