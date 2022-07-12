import 'dart:developer';

import 'package:machine_learning/enums.dart';
import 'package:machine_learning/neuron_layer.dart';

class LearningBox {
  final List<NeuronLayer> layers;
  LearningBox({required this.layers});

  void addInput(List<List<double>> sample) {
    for (final NeuronLayer layer in layers) {
      if (layer.layerType == LayerType.input) {
        if (layer.neurons.length > sample.length) {
          log('Warning: Not all neurons were updated because layer.neurons.length != sample.length (${layer.neurons.length} != ${sample.length})',
              name: 'LearningBox ');
              
        }
        layer.updateInputs(sample);
      }
    }
  }
}
