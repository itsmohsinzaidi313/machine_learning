import 'dart:math';

class LayerDense {
  List<List<double>> weights = [[]];
  List<double> biases = [];
  List<List<double>> output = [[]];

  LayerDense(int nInputs, int nNeurons) {
    weights = <List<double>>[];
    for (var i = 0; i < nInputs; i++) {
      weights[i] = Vector().random(nNeurons);
    }

    for (var i = 0; i < nNeurons; i++) {
      biases[i] = 0;
    }
  }

  void forward(List<List<double>> inputs) {
    output = dotProduct(inputs, weights);

    for (var i = 0; i < output.length; i++) {
      for (var j = 0; j < output[j].length; j++) {
        output[j][j] = (output[j][j] + biases[j]);
      }
    }
  }
}

class Vector {
  List<double> random(int value) => List.generate(4, (index) => _randomValue());

  double _randomValue() => Random().nextDouble() * Random(-1).nextInt(1);
}

List<List<double>> dotProduct(List<List<double>> v1, List<List<double>> v2) {
  List<List<double>> v3 = <List<double>>[<double>[]];
  for (var i = 0; i < v1.length; i++) {
    double sum = 0;
    for (var j = 0; j < v1[j].length; j++) {
      sum += v1[i][j] * v2[i][j];
    }
    v3[i].add(sum);
  }
  return v3;
}
