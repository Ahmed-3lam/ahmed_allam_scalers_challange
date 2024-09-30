import '../../data/models/AllJobsModel.dart';

abstract class AllJobsRepo {
  Future<List<JobsData>> getAllJobs();
}
