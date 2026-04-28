import 'package:flutter/material.dart';

class SubjectGradeBreakdown {
  final int partial1;
  final int partial2;
  final int practicalWorks;
  final int finalExam;
  final int attendance;

  const SubjectGradeBreakdown({
    required this.partial1,
    required this.partial2,
    required this.practicalWorks,
    required this.finalExam,
    required this.attendance,
  });
}

class Subject {
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

  const Subject({
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

  double get progress => total == 0 ? 0 : score / total;

  bool get isApproved => score >= 51;

  Subject copyWith({
    String? code,
    String? name,
    int? score,
    int? total,
    String? teacher,
    int? credits,
    SubjectGradeBreakdown? breakdown,
    bool? isExpanded,
    IconData? icon,
    Color? iconColor,
  }) {
    return Subject(
      code: code ?? this.code,
      name: name ?? this.name,
      score: score ?? this.score,
      total: total ?? this.total,
      teacher: teacher ?? this.teacher,
      credits: credits ?? this.credits,
      breakdown: breakdown ?? this.breakdown,
      isExpanded: isExpanded ?? this.isExpanded,
      icon: icon ?? this.icon,
      iconColor: iconColor ?? this.iconColor,
    );
  }
}
