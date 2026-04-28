import 'package:flutter/foundation.dart';

import '../../domain/entities/subject.dart';
import '../../domain/usecases/get_subjects.dart';

class PortalHomeViewModel {
  final GetSubjectsUseCase _getSubjectsUseCase;

  final ValueNotifier<List<Subject>> subjects = ValueNotifier(const []);
  final ValueNotifier<bool> isLoading = ValueNotifier(false);

  PortalHomeViewModel(this._getSubjectsUseCase);

  Future<void> loadSubjects() async {
    isLoading.value = true;
    subjects.value = await _getSubjectsUseCase();
    isLoading.value = false;
  }

  void toggleSubjectExpansion(String code) {
    subjects.value = subjects.value
        .map((subject) {
          if (subject.code == code) {
            return subject.copyWith(isExpanded: !subject.isExpanded);
          }
          if (subject.isExpanded) {
            return subject.copyWith(isExpanded: false);
          }
          return subject;
        })
        .toList(growable: false);
  }

  void dispose() {
    subjects.dispose();
    isLoading.dispose();
  }
}
