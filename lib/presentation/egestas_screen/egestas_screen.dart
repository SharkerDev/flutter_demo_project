import 'package:demo_flutter/domain/blocs/articles_bloc/articles_bloc.dart';
import 'package:demo_flutter/shared/theme/export.dart';
import 'package:demo_flutter/shared/ui_kit/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class EgestasScreen extends StatelessWidget {
  const EgestasScreen({Key? key}) : super(key: key);

  static const String routeName = '/egestas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pressedBlue,
        title: const Text('SharkSW Demo Application'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60.0,
        ),
        child: BlocProvider<ArticlesBloc>(
          create: (context) => GetIt.I<ArticlesBloc>()..loadArticles(),
          child: BlocBuilder<ArticlesBloc, ArticlesState>(
            builder: (context, state) {
              return state.when(
                initial: _loadingWidget,
                loading: _loadingWidget,
                error: _errorMessage,
                empty: _emptyList,
                loaded: (articleList) {
                  return ListView.builder(
                    itemCount: articleList!.length,
                    itemBuilder: (context, index) {
                      return ArticleWidget(
                        article: articleList[index],
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _emptyList() {
    return const Center(
      child: Text('There is nothing to display'),
    );
  }

  Widget _errorMessage() {
    return const Center(
      child: Text('Ooops. Something went wrong!'),
    );
  }

  Widget _loadingWidget() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
