import 'package:injectable/injectable.dart';

import '../../../../core/network/dio_helper.dart';
import '../../../../core/network/k_apis.dart';
import '../models/AllJobsModel.dart';

abstract class AllJobsDataSource {
  Future<List<JobsData>> getAllJobs();
}

@LazySingleton(as: AllJobsDataSource)
class AllJobsDataSourceImpl implements AllJobsDataSource {
  final DioHelper _dioHelper;

  AllJobsDataSourceImpl({required DioHelper dioHelper})
      : _dioHelper = dioHelper;

  @override
  Future<List<JobsData>> getAllJobs() async {
    final response = await _dioHelper.getData(path: KApis.jobs);
    final model = AllJobsModel.fromJson(response.data);
    return model.data!;
  }
}
