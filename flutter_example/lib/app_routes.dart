import 'package:flutter/material.dart';
import 'package:flutter_example/commons/components/app_screen.dart';
import 'package:flutter_example/components/homeScreen/home_screen.dart';
import 'package:flutter_example/components/loginScreen/login_screen.dart';

class AppRoute {
  AppRouteItem home = AppRouteItem('/home', const HomeScreen(title: 'Home Page'));
  AppRouteItem login = AppRouteItem('/login', const LoginScreen(title: 'Login Page'));
}

class AppRouteItem {
  String routeUrl;
  Widget screen;

  AppRouteItem(this.routeUrl, AppScreen this.screen);
}
