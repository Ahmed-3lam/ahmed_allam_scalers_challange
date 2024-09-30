part of 'all_jobs_cubit.dart';

@immutable
sealed class AllJobsState {}

final class AllJobsInitial extends AllJobsState {}

final class AllJobsLoading extends AllJobsState {}

final class AllJobsSuccess extends AllJobsState {
  final List<JobsData> jobs;

  AllJobsSuccess(this.jobs);
}

final class AllJobsError extends AllJobsState {
  final String message;

  AllJobsError(this.message);
}
