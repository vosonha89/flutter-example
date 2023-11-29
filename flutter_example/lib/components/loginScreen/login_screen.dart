import 'package:flutter/material.dart';
import 'package:flutter_example/commons/components/app_screen.dart';
import 'package:flutter_example/components/loginScreen/login_screen_state.dart';

/// Login Screen
class LoginScreen extends AppScreen {
  const LoginScreen({super.key, required super.title});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}
