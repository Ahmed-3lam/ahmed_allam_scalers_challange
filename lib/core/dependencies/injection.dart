import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:scalers_challange/core/dependencies/injection.config.dart';

final serviceLocator = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => serviceLocator.init();

// dart run build_runner build --delete-conflicting-outputs

// flutter gen-l10n
