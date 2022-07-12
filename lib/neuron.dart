import 'package:machine_learning/helpers.dart';

class NeuronT1 {
  final int id;
  final List<double> inputs;
  final List<double> weights;
  double bias = 0;

  NeuronT1(this.id)
      : inputs = <double>[],
        weights = <double>[],
        bias = Helpers.randomValue();

  NeuronT1.withInputs(
    this.id, {
    required this.inputs,
  })  : weights = <double>[],
        bias = Helpers.randomValue();

  void addInputs(List<double> inputValues) {
    inputs.clear();
    for (final double input in inputValues) {
      inputs.add(input);
    }
  }

  double get output {
    double weightedSum = 0;
    for (var i = 0; i < inputs.length; i++) {
      weightedSum += inputs[i] * weights[i];
    }
    return weightedSum + bias;
  }
}
