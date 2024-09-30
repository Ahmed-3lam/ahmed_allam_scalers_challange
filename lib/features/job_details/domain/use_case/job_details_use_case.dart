import 'package:injectable/injectable.dart';
import 'package:scalers_challange/features/job_details/data/models/JobDetailsModel.dart';
import 'package:scalers_challange/features/job_details/domain/repo/job_details_repo.dart';

@LazySingleton()
class JobDetailsUseCase {
  final JobDetailsRepo _jobDetailsRepository;

  JobDetailsUseCase(this._jobDetailsRepository);

  Future<JobDetailsData> call(String jobId) async {
    return await _jobDetailsRepository.getJobDetails(jobId);
  }
}
