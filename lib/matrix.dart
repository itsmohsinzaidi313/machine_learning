import 'package:machine_learning/helpers.dart';

class Matrix {
  int get nRows => values[0].length;
  int get nColumns => values.length;
  List<List<double>> values = <List<double>>[<double>[]];

  Matrix({int nRows = 1, int nColumns = 1}) {
    for (var i = 0; i < nColumns; i++) {
      for (var j = 0; j < nRows; j++) {
        values[i][j] = Helpers.randomValue();
      }
    }
  }

  Matrix.withValues({required this.values});
}
