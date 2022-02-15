import 'package:demo_flutter/presentation/app_browser/app_browser.dart';
import 'package:demo_flutter/presentation/egestas_screen/egestas_screen.dart';
import 'package:demo_flutter/presentation/fringilla_screen/fringilla_screen.dart';
import 'package:demo_flutter/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

/// This is a class for generating and easy use named routes
class AppRouter {
  ///  This is a static private method to implement the same routing animation on both platform.
  ///  transitionDuration is a parameter to setup the speed of the animation routing to another screen.
  ///  reverseTransitionDuration is a parameter to setup the speed of routing back to previous screen.
  static PageRouteBuilder<dynamic> _routeBuilder(
      Widget widget, RouteSettings settings,) {
    return PageRouteBuilder(
      settings: settings,
      transitionDuration: const Duration(microseconds: 300),
      reverseTransitionDuration: const Duration(microseconds: 300),
      pageBuilder: (_, __, ___) => widget,
      transitionsBuilder: (_, anim, __, child) {
        return FadeTransition(
          opacity: anim,
          child: child,
        );
      },
    );
  }

  /// Method for generating routes.
  /// Every screen should include static constant 'routeName' containing string with route path.
  /// To add here a new route, add a case with Screen.routeName and transfer the screen's widget to a _routeBuilder and settings to transfer parameters to a widget
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return _routeBuilder(const HomeScreen(), settings);

      case EgestasScreen.routeName:
        return _routeBuilder(const EgestasScreen(), settings);

      case FringillaScreen.routeName:
        return _routeBuilder(const FringillaScreen(), settings);

      case AppBrowser.routeName:
        {
          final dynamic data = settings.arguments;

          return _routeBuilder(AppBrowser(url: data), settings);
        }
      default:
        return _routeBuilder(const HomeScreen(), settings);
    }
  }
}
