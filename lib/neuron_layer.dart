import 'package:machine_learning/enums.dart';
import 'package:machine_learning/helpers.dart';
import 'package:machine_learning/neuron.dart';

class NeuronLayer {
  final int layerNumber;
  final LayerType layerType;
  final List<NeuronT1> neurons;

  NeuronLayer(
    this.layerNumber, {
    this.layerType = LayerType.hidden,
    required this.neurons,
  });

  NeuronLayer.random(
    this.layerNumber,
    this.layerType, {
    int count = 1,
  }) : neurons = <NeuronT1>[] {
    for (var i = 0; i < count; i++) {
      final n = NeuronT1(i)..bias = Helpers.randomValue();
      neurons.add(n);
    }
  }

  void x(NeuronLayer inLayer) {
    for (var i = 0; i < neurons.length; i++) {
      List<double> outputs = [];
      for (var j = 0; j < inLayer.neurons.length; j++) {
        outputs.add(inLayer.neurons[j].output);
      }
      neurons[i].addInputs(outputs);
    }
  }

  void insertOutputs(NeuronLayer inLayer) {
    for (var i = 0; i < neurons.length; i++) {
      List<double> outputs = [];
      for (var j = 0; j < inLayer.neurons.length; j++) {
        outputs.add(inLayer.neurons[j].output);
      }
      neurons[i].addInputs(outputs);
    }
  }

  void updateInputs(List<List<double>> inputs) {
    for (final NeuronT1 neuron in neurons) {
      for (var input in inputs) {
        neuron.addInputs(input);
      }
    }
  }

  void printOutputs() {
    for (final NeuronT1 neuron in neurons) {
      print('${neuron.runtimeType} ${neuron.output}');
    }
  }
}
