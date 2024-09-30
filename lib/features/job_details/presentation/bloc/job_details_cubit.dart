import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:scalers_challange/core/dependencies/injection.dart';
import 'package:scalers_challange/core/network/dio_helper.dart';
import 'package:scalers_challange/features/job_details/domain/use_case/job_details_use_case.dart';

import '../../../../core/network/k_apis.dart';
import '../../data/models/JobDetailsModel.dart';

part 'job_details_state.dart';

class JobDetailsCubit extends Cubit<JobDetailsState> {
  final JobDetailsUseCase _jobDetailsUseCase;

  JobDetailsCubit(JobDetailsUseCase jobDetailsUseCase)
      : _jobDetailsUseCase = jobDetailsUseCase,
        super(JobDetailsInitial());

  void getJobDetails(String id) async {
    emit(JobDetailsLoading());
    try {
      final response =
          await serviceLocator<DioHelper>().getData(path: KApis.jobDetails(id));
      final model = JobDetailsModel.fromJson(response.data);
      if (model.data == null) {
        emit(JobDetailsError("No data found"));
        return;
      }
      emit(JobDetailsSuccess(model.data!));
    } catch (e) {
      emit(JobDetailsError("Connection is bad"));
    }
  }
}
