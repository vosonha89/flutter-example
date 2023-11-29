import 'package:flutter/material.dart';

abstract class AppScreen extends StatefulWidget {
  final String title;

  const AppScreen({super.key, required this.title});
}
