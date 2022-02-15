part of 'articles_bloc.dart';

@freezed
class ArticlesEvent extends BaseEvent with _$ArticlesEvent {
  const factory ArticlesEvent.initial() = Initial;
  const factory ArticlesEvent.loading() = Loading;
  const factory ArticlesEvent.empty() = Empty;
  const factory ArticlesEvent.error() = Error;
  const factory ArticlesEvent.loaded(List<Article> articleList) = Loaded;
}
