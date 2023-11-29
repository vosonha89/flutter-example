import 'package:flutter/material.dart';
import 'package:flutter_example/commons/components/app_screen.dart';
import 'package:flutter_example/components/homeScreen/home_screen_state.dart';

/// Home Screen
class HomeScreen extends AppScreen {
  const HomeScreen({super.key, required super.title});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}
