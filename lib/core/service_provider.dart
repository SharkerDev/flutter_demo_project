import 'package:demo_flutter/core/service_locator.dart';
import 'package:demo_flutter/data/repositories/articles_repository.dart';

class ServiceProvider extends ServiceLocator {
  static final instance = ServiceProvider();

  Future<void> initialize() async {
    this..registerLazySingleton(()=>ArticlesRepository());
  }
}
