part of 'job_details_cubit.dart';

@immutable
sealed class JobDetailsState {}

final class JobDetailsInitial extends JobDetailsState {}

final class JobDetailsLoading extends JobDetailsState {}

final class JobDetailsSuccess extends JobDetailsState {
  final JobDetailsData jobDetailsModel;

  JobDetailsSuccess(this.jobDetailsModel);
}

final class JobDetailsError extends JobDetailsState {
  final String message;

  JobDetailsError(this.message);
}
