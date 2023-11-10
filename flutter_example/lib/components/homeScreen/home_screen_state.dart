import 'package:flutter/material.dart';
import 'package:flutter_example/app_routes.dart';
import 'package:flutter_example/components/homeScreen/home_screen.dart';

class HomeScreenState extends State<HomeScreen> {
  void gotoLogin() {
    AppRoute routes = AppRoute();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => routes.login.screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '0',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: gotoLogin,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
