import 'package:flutter/material.dart';

class Subject {
  final String name;
  final int score;
  final int total;
  final IconData icon;
  final Color iconColor;

  const Subject({
    required this.name,
    required this.score,
    required this.total,
    required this.icon,
    required this.iconColor,
  });

  double get progress => total == 0 ? 0 : score / total;
}
