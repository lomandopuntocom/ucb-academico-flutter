import 'package:flutter/material.dart';

import '../../domain/entities/subject.dart';
import '../models/subject_model.dart';

class LocalSubjectDataSource {
  Future<List<SubjectModel>> fetchSubjects() async {
    await Future.delayed(const Duration(milliseconds: 200));

    return const [
      SubjectModel(
        code: 'SIS-420',
        name: 'PLATAFORMAS MÓVILES',
        score: 87,
        teacher: 'Ing. Percy Tomicha',
        credits: 4,
        breakdown: SubjectGradeBreakdown(
          partial1: 90,
          partial2: 94,
          practicalWorks: 91,
          finalExam: 93,
          attendance: 95,
        ),
        icon: Icons.phone_android_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        code: 'SIS-431',
        name: 'MACHINE LEARNING',
        score: 100,
        teacher: 'Ing. Pedro Campos',
        credits: 4,
        breakdown: SubjectGradeBreakdown(
          partial1: 100,
          partial2: 100,
          practicalWorks: 100,
          finalExam: 100,
          attendance: 100,
        ),
        icon: Icons.psychology_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        code: 'SIS-413',
        name: 'TALLER DE DISEÑO DE SOFTWARE II',
        score: 89,
        teacher: 'Ing. Raiden Makio Tomori',
        credits: 4,
        breakdown: SubjectGradeBreakdown(
          partial1: 92,
          partial2: 86,
          practicalWorks: 88,
          finalExam: 90,
          attendance: 89,
        ),
        icon: Icons.settings_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        code: 'SIS-422',
        name: 'COMPUTACION EN LA NUBE',
        score: 84,
        teacher: 'Ing. Fabrizio Bellido',
        credits: 4,
        breakdown: SubjectGradeBreakdown(
          partial1: 82,
          partial2: 86,
          practicalWorks: 83,
          finalExam: 84,
          attendance: 85,
        ),
        icon: Icons.device_hub_rounded,
        iconColor: Color(0xFFE8A020),
      ),
      SubjectModel(
        code: 'SIS-418',
        name: 'APP WEB II',
        score: 49,
        teacher: 'Lic. Gonzalo Calle',
        credits: 4,
        breakdown: SubjectGradeBreakdown(
          partial1: 60,
          partial2: 60,
          practicalWorks: 80,
          finalExam: 38,
          attendance: 80,
        ),
        icon: Icons.edit_document,
        iconColor: Color(0xFFE8A020),
      ),
    ];
  }
}
