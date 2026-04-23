import 'package:flutter/material.dart';
import '../models/subject_model.dart';

class LocalSubjectDataSource {
  Future<List<SubjectModel>> fetchSubjects() async {
    await Future.delayed(const Duration(milliseconds: 200));

    return const [
      SubjectModel(
        name: 'PLATAFORMAS MÓVILES',
        score: 87,
        total: 100,
        icon: Icons.phone_android_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        name: 'INTELIGENCIA ARTIFICIAL',
        score: 50,
        total: 100,
        icon: Icons.psychology_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        name: 'INGENIERÍA DE SOFTWARE',
        score: 89,
        total: 100,
        icon: Icons.settings_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        name: 'REDES DE COMPUTADORAS',
        score: 84,
        total: 100,
        icon: Icons.device_hub_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        name: 'TESIS DE GRADO I',
        score: 75,
        total: 100,
        icon: Icons.edit_document,
        iconColor: Color(0xFFE8A020),
      ),
    ];
  }
}
