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
        name: 'MACHINE LEARNING',
        score: 100,
        total: 100,
        icon: Icons.psychology_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        name: 'TALLER DE DISEÑO DE SOFTWARE II',
        score: 89,
        total: 100,
        icon: Icons.settings_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        name: 'COMPUTACION EN LA NUBE',
        score: 84,
        total: 100,
        icon: Icons.device_hub_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        name: 'APP WEB II',
        score: 75,
        total: 100,
        icon: Icons.edit_document,
        iconColor: Color(0xFFE8A020),
      ),
    ];
  }
}
