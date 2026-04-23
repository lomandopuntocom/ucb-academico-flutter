import 'package:flutter/material.dart';

import '../../data/datasources/local_subject_data_source.dart';
import '../../data/repositories/subject_repository_impl.dart';
import '../../domain/entities/subject.dart';
import '../../domain/usecases/get_subjects.dart';
import '../viewmodels/portal_home_viewmodel.dart';
import '../widgets/portal_header.dart';
import '../widgets/subject_card.dart';

class PortalHomePage extends StatefulWidget {
  const PortalHomePage({super.key});

  @override
  State<PortalHomePage> createState() => _PortalHomePageState();
}

class _PortalHomePageState extends State<PortalHomePage> {
  late final PortalHomeViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    final repository = SubjectRepositoryImpl(LocalSubjectDataSource());
    _viewModel = PortalHomeViewModel(GetSubjectsUseCase(repository));
    _viewModel.loadSubjects();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F8),
      body: Column(
        children: [
          const PortalHeader(),
          Expanded(
            child: ValueListenableBuilder<List<Subject>>(
              valueListenable: _viewModel.subjects,
              builder: (context, subjects, child) {
                if (subjects.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  itemCount: subjects.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 12),
                  itemBuilder: (context, index) => SubjectCard(subject: subjects[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
