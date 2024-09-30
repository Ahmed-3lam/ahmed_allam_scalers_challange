import '../../data/models/JobDetailsModel.dart';

abstract class JobDetailsRepo {
  Future<JobDetailsData> getJobDetails(String id);
}
