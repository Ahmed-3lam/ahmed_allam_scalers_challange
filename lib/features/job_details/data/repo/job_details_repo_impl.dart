import 'package:injectable/injectable.dart';

import '../../domain/repo/job_details_repo.dart';
import '../data_source/job_details_data_source.dart';
import '../models/JobDetailsModel.dart';

@LazySingleton(as: JobDetailsRepo)
class JobDetailsRepoImpl implements JobDetailsRepo {
  final JobDetailsDataSource jobDetailsDataSource;

  JobDetailsRepoImpl({required this.jobDetailsDataSource});

  @override
  Future<JobDetailsData> getJobDetails(String id) async {
    return await jobDetailsDataSource.getJobDetails(id);
  }
}
