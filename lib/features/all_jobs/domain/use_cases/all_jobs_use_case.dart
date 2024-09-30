import 'package:injectable/injectable.dart';
import 'package:scalers_challange/features/all_jobs/data/models/AllJobsModel.dart';
import 'package:scalers_challange/features/all_jobs/domain/repo/all_jobs_repo.dart';

@LazySingleton()
class AllJobsUseCase {
  final AllJobsRepo _repository;

  AllJobsUseCase(this._repository);

  Future<List<JobsData>> call() async {
    return await _repository.getAllJobs();
  }
}
