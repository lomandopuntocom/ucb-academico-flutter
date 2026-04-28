import 'package:flutter/material.dart';

import '../../domain/entities/subject.dart';

class SubjectModel {
  final String code;
  final String name;
  final int score;
  final int total;
  final String teacher;
  final int credits;
  final SubjectGradeBreakdown breakdown;
  final bool isExpanded;
  final IconData icon;
  final Color iconColor;

  const SubjectModel({
    required this.code,
    required this.name,
    required this.score,
    required this.total,
    required this.teacher,
    required this.credits,
    required this.breakdown,
    this.isExpanded = false,
    required this.icon,
    required this.iconColor,
  });

  Subject toEntity() {
    return Subject(
      code: code,
      name: name,
      score: score,
      total: total,
      teacher: teacher,
      credits: credits,
      breakdown: breakdown,
      isExpanded: isExpanded,
      icon: icon,
      iconColor: iconColor,
    );
  }

  static SubjectModel fromEntity(Subject subject) {
    return SubjectModel(
      code: subject.code,
      name: subject.name,
      score: subject.score,
      total: subject.total,
      teacher: subject.teacher,
      credits: subject.credits,
      breakdown: subject.breakdown,
      isExpanded: subject.isExpanded,
      icon: subject.icon,
      iconColor: subject.iconColor,
    );
  }
}
