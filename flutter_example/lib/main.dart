import 'package:flutter/material.dart';
import 'package:flutter_example/app_routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    AppRoute routes = AppRoute();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: routes.home.screen,
      routes: {
        routes.home.routeUrl: (context) => routes.home.screen,
        routes.login.routeUrl: (context) => routes.login.screen,
      },
    );
  }
}
