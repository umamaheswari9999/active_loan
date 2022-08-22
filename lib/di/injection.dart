import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt locator = GetIt.instance;
@injectableInit
void configureInjection(String env) {
  $initGetIt(locator, environment: env);
}