import 'package:dashboard/model/graphmodel.dart';
import 'package:flutter/material.dart';

class BarGraphModel{
  final String label;
  final Color color;
  final List<GraphModel> graph;

  BarGraphModel({
    required this.label,
    required this.color,
    required this.graph,
  });
}