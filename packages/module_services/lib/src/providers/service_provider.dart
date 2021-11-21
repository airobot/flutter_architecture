import 'package:get_it/get_it.dart';
import 'package:module_services/src/services/service_flutter.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  void initialize() {
    _getIt.registerLazySingleton(
      () => ServiceFlutter(),
    );
  }
}
