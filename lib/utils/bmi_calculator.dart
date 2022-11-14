import 'dart:math';

class BmiCalculator {
  final int height;
  final int weight;
  double _bmi = 0.0;

  BmiCalculator({required this.height, required this.weight});

  String calculateBmi() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }
}
