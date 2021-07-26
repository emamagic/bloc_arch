
import 'package:bloc_arch/core/exceptions/RouteException.dart';
import 'package:bloc_arch/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../../core/constants/strings.dart';

class AppRouter {
  static const String home = '/';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: Strings.homeScreenTitle,
          ),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}