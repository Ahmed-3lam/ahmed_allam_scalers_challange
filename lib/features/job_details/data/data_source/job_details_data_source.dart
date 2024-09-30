import 'package:injectable/injectable.dart';
import 'package:scalers_challange/core/network/dio_helper.dart';
import 'package:scalers_challange/core/network/k_apis.dart';

import '../models/JobDetailsModel.dart';

abstract class JobDetailsDataSource {
  Future<JobDetailsData> getJobDetails(String id);
}

@LazySingleton(as: JobDetailsDataSource)
class JobDetailsDataSourceImpl implements JobDetailsDataSource {
  final DioHelper dioHelper;

  JobDetailsDataSourceImpl({required this.dioHelper});

  @override
  Future<JobDetailsData> getJobDetails(String id) async {
    final response = await dioHelper.getData(path: KApis.jobDetails(id));
    final model = JobDetailsModel.fromJson(response.data);
    return model.data!;
  }
}
