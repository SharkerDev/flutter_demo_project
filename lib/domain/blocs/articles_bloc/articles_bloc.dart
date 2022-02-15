import 'package:demo_flutter/data/models/article/article.dart';
import 'package:demo_flutter/data/repositories/articles_repository.dart';
import 'package:demo_flutter/domain/blocs/base_bloc/base_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles_bloc.freezed.dart';
part 'articles_event.dart';
part 'articles_state.dart';

class ArticlesBloc extends BaseBloc<ArticlesEvent, ArticlesState> {
  final ArticlesRepository _articlesRepository;

  ArticlesBloc(this._articlesRepository)
      : super(const ArticlesState.initial()) {
    on<ArticlesEvent>((event, emit) {
      event.map(
        initial: (_) {
          emit(const ArticlesState.initial());
        },
        loading: (_) {
          emit(const ArticlesState.loading());
        },
        error: (_) {
          emit(const ArticlesState.error());
        },
        empty: (_) {
          emit(const ArticlesState.empty());
        },
        loaded: (event) {
          emit(ArticlesState.loaded(articleList: event.articleList));
        },
      );
    });
  }

  Future<void> loadArticles() async {
    add(const ArticlesEvent.loading());
    final _articleList = await _articlesRepository.getArticles();
    if (_articleList == null) {
      add(const ArticlesEvent.error());
    } else if (_articleList.isEmpty) {
      add(const ArticlesEvent.empty());
    } else {
      add(ArticlesEvent.loaded(_articleList));
    }
  }

  @override
  Stream<ArticlesState> initialize() {
    return super.initialize();
  }
}
