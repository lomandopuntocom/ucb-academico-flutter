import '../../domain/entities/subject.dart';
import '../../domain/repositories/subject_repository.dart';
import '../datasources/local_subject_data_source.dart';

class SubjectRepositoryImpl implements SubjectRepository {
  final LocalSubjectDataSource dataSource;

  SubjectRepositoryImpl(this.dataSource);

  @override
  Future<List<Subject>> getSubjects() async {
    final models = await dataSource.fetchSubjects();
    return models.map((model) => model.toEntity()).toList();
  }
}
