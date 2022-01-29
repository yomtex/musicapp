// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/home/home_screen.dart';
import 'package:music_app_ui/screens/root/root_widget.dart';
import 'package:music_app_ui/screens/search/search_screen.dart';
import 'package:music_app_ui/screens/splashscreen/splash_screen.dart';

import 'fade_route.dart';
import 'routes.dart';

class ScreenRouter {
  // static const String root = '/';
  // static const String login = '/login';
  // static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return FadeRoute(
          page: const SplashScreen(),
        );

      case Routes.home:
        return FadeRoute(
          page: const RootWidget(),
        );

      // case Routes.home:
      //   return FadeRoute(
      //     page: const RootWidget(),
      //   );
      // case Routes.search:
      //   return FadeRoute(
      //     page:  SearchScreen(),
      //   );
      // case Routes.home:
      //   return FadeRoute(
      //     page: const RootWidget(),
      //   );
      // case Routes.home:
      //   return FadeRoute(
      //     page: const RootWidget(),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
              body:
                  Center(child: Text('No route defined for ${settings.name}'))),
        );
    }
  }
}