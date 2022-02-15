part of 'articles_bloc.dart';

@freezed
class ArticlesState extends BaseState with _$ArticlesState {
  const factory ArticlesState.initial() = StateInitial;
  const factory ArticlesState.loading() = StateLoading;
  const factory ArticlesState.error() = StateError;
  const factory ArticlesState.empty() = StateEmpty;
  const factory ArticlesState.loaded({required List<Article>? articleList}) =
      StateLoaded;
}
