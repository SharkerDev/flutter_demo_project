import 'dart:async';
import 'package:demo_flutter/core/service_locator.dart';
import 'package:demo_flutter/data/repositories/articles_repository.dart';
import 'package:demo_flutter/domain/blocs/articles_bloc/articles_bloc.dart';

///
/// Provides registered blocs needed for UI.
///
class BlocFactory extends ServiceLocator {
  ///
  /// Globally available BLoC factory
  ///
  static final instance = BlocFactory();

  Future<void> initialize() async {
    this
      ..registerFactory<ArticlesBloc>(
        () => ArticlesBloc(get<ArticlesRepository>()),
      );

    return allReady();
  }
}
