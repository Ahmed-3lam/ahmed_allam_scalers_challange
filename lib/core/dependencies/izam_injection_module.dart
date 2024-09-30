import 'package:injectable/injectable.dart';
import 'package:scalers_challange/core/network/dio_helper.dart';

@module
abstract class IzamInjectionModule {
  @lazySingleton
  DioHelper get dioHelper => DioHelper();
}
