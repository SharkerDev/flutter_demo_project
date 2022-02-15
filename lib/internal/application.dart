import 'package:demo_flutter/internal/router.dart';
import 'package:demo_flutter/presentation/home_screen/home_screen.dart';
import 'package:demo_flutter/shared/theme/export.dart';
import 'package:flutter/material.dart';

class FlutterDemoApplication extends StatelessWidget {
  const FlutterDemoApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: AppColors.backgroundBlue),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: HomeScreen.routeName,
      title: 'SharkSW Demo flutter app',
    );
  }
}
