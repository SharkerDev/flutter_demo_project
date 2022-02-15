import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_bloc.dart';

mixin BaseActions<E extends BaseEvent, S extends BaseState> on Bloc<E, S> {
  Future<void> startInitialization() async {
    initialize().listen(emit)
      ..onError((_) {
        //TODO: implement
      });
  }

  Future<void> doRefresh() async {
    refresh().listen(emit)
      ..onError((_) {
        //TODO: implement
      });
  }

  @protected
  Stream<S> initialize() async* {}

  @protected
  Stream<S> refresh() async* {}

  @override
  void emit(S state) {
    // ignore: invalid_use_of_visible_for_testing_member
    super.emit(state);
  }
}
