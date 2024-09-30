import 'package:injectable/injectable.dart';
import 'package:scalers_challange/features/all_jobs/data/models/AllJobsModel.dart';

import '../../domain/repo/all_jobs_repo.dart';
import '../data_source/all_jobs_data_source.dart';

@LazySingleton(as: AllJobsRepo)
class AllJobsRepoImpl implements AllJobsRepo {
  final AllJobsDataSource allJobsDataSource;

  AllJobsRepoImpl({required this.allJobsDataSource});

  @override
  Future<List<JobsData>> getAllJobs() async {
    return allJobsDataSource.getAllJobs();
  }
}
