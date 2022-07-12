import 'dart:math';

class Helpers {
  static List<List<double>> dotProduct(
      List<List<double>> v1, List<double> v2) {
    List<List<double>> v3 = <List<double>>[<double>[]];
    for (var i = 0; i < v1.length; i++) {
      double sum = 0;
      for (var j = 0; j < v1[j].length; j++) {
        sum += v1[i][j] * v2[i];
      }
      v3[i].add(sum);
    }
    return v3;
  }

  static List<List<double>> transpose(List<List<double>> vector) {
    List<List<double>> v = <List<double>>[<double>[]];

    for (var i = 0; i < vector.length; i++) {
      for (var j = 0; j < vector[j].length; j++) {
        v[j][i] = vector[i][j];
      }
    }
    return v;
  }

  static double randomValue() => Random().nextDouble() * Random(-1).nextInt(1);
}
