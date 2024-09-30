import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:scalers_challange/features/all_jobs/data/models/AllJobsModel.dart';
import 'package:scalers_challange/features/all_jobs/domain/use_cases/all_jobs_use_case.dart';

part 'all_jobs_state.dart';

class AllJobsCubit extends Cubit<AllJobsState> {
  final AllJobsUseCase _allJobsUseCase;
  AllJobsCubit(this._allJobsUseCase) : super(AllJobsInitial());

  void fetchAllJobs() async {
    emit(AllJobsLoading());
    try {
      final model = await _allJobsUseCase.call();
      emit(AllJobsSuccess(model));
    } catch (e) {
      emit(AllJobsError("Connection is bad"));
    }
  }
}
