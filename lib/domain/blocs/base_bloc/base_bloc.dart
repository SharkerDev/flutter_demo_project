import 'package:demo_flutter/domain/blocs/base_bloc/base_actions_mixin.dart';
import 'package:flutter/cupertino.dart' show immutable;
import 'package:flutter_bloc/flutter_bloc.dart' show Bloc;

import 'closeable.dart';

part 'base_event.dart';
part 'base_state.dart';

abstract class BaseBloc<E extends BaseEvent, S extends BaseState>
    extends Bloc<E, S> with BaseActions<E, S> implements Closeable {
  BaseBloc(S initialState) : super(initialState) {
    startInitialization();
  }
}
