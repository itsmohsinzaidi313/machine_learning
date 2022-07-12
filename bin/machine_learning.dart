import 'package:machine_learning/enums.dart';
import 'package:machine_learning/machine_learning.dart' as machine_learning;
import 'package:machine_learning/neuron.dart';
import 'package:machine_learning/neuron_layer.dart';

void main(List<String> arguments) {
  NeuronLayer layer0 = NeuronLayer.random(0, LayerType.input, count: 5);
  NeuronLayer layer1 = NeuronLayer.random(1, LayerType.hidden, count: 5);
  NeuronLayer layer2 = NeuronLayer.random(2, LayerType.output, count: 5);
}
