import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Router.dart';
import 'constants/RoutePaths.dart';

void main() {
  // remove status bar bg color
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(QuotesApp());
}

var appName = "Quotes App";

class QuotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: RoutePaths.Home,
      onGenerateRoute: Router.onGenerateRoute,
    );
  }
}
