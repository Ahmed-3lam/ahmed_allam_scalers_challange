// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:scalers_challange/core/dependencies/izam_injection_module.dart'
    as _i119;
import 'package:scalers_challange/core/network/dio_helper.dart' as _i1072;
import 'package:scalers_challange/features/all_jobs/data/data_source/all_jobs_data_source.dart'
    as _i569;
import 'package:scalers_challange/features/all_jobs/data/repo/all_jobs_repo_impl.dart'
    as _i372;
import 'package:scalers_challange/features/all_jobs/domain/repo/all_jobs_repo.dart'
    as _i925;
import 'package:scalers_challange/features/all_jobs/domain/use_cases/all_jobs_use_case.dart'
    as _i948;
import 'package:scalers_challange/features/job_details/data/data_source/job_details_data_source.dart'
    as _i1016;
import 'package:scalers_challange/features/job_details/data/repo/job_details_repo_impl.dart'
    as _i728;
import 'package:scalers_challange/features/job_details/domain/repo/job_details_repo.dart'
    as _i382;
import 'package:scalers_challange/features/job_details/domain/use_case/job_details_use_case.dart'
    as _i454;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final izamInjectionModule = _$IzamInjectionModule();
    gh.lazySingleton<_i1072.DioHelper>(() => izamInjectionModule.dioHelper);
    gh.lazySingleton<_i1016.JobDetailsDataSource>(() =>
        _i1016.JobDetailsDataSourceImpl(dioHelper: gh<_i1072.DioHelper>()));
    gh.lazySingleton<_i569.AllJobsDataSource>(
        () => _i569.AllJobsDataSourceImpl(dioHelper: gh<_i1072.DioHelper>()));
    gh.lazySingleton<_i382.JobDetailsRepo>(() => _i728.JobDetailsRepoImpl(
        jobDetailsDataSource: gh<_i1016.JobDetailsDataSource>()));
    gh.lazySingleton<_i925.AllJobsRepo>(() => _i372.AllJobsRepoImpl(
        allJobsDataSource: gh<_i569.AllJobsDataSource>()));
    gh.lazySingleton<_i948.AllJobsUseCase>(
        () => _i948.AllJobsUseCase(gh<_i925.AllJobsRepo>()));
    gh.lazySingleton<_i454.JobDetailsUseCase>(
        () => _i454.JobDetailsUseCase(gh<_i382.JobDetailsRepo>()));
    return this;
  }
}

class _$IzamInjectionModule extends _i119.IzamInjectionModule {}
