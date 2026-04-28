import 'package:flutter/material.dart';

import '../../domain/entities/subject.dart';

class SubjectModel {
  final String name;
  final int score;
  final int total;
  final IconData icon;
  final Color iconColor;

  const SubjectModel({
    required this.name,
    required this.score,
    required this.total,
    required this.icon,
    required this.iconColor,
  });

  Subject toEntity() {
    return Subject(
      name: name,
      score: score,
      total: total,
      icon: icon,
      iconColor: iconColor,
    );
  }

  static SubjectModel fromEntity(Subject subject) {
    return SubjectModel(
      name: subject.name,
      score: subject.score,
      total: subject.total,
      icon: subject.icon,
      iconColor: subject.iconColor,
    );
  }
}
