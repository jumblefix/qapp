import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qapp/screens/HomePage.dart';
import 'package:qapp/screens/SecondPage.dart';
import 'package:qapp/screens/ThirdPage.dart';
import 'constants/RoutePaths.dart';

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(
          builder: (_) => HomePage(
            title: 'Quotes App',
          ),
        );
      case RoutePaths.Second:
        return MaterialPageRoute(builder: (_) => SecondPage());
      case RoutePaths.Third:
        return MaterialPageRoute(builder: (_) => ThirdPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
