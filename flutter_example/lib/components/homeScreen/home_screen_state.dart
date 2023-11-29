import 'package:flutter/material.dart';
import 'package:flutter_example/app_routes.dart';
import 'package:flutter_example/components/homeScreen/home_screen.dart';
import 'package:flutter_example/services/log_service.dart';
import 'package:flutter_example/services/storage_service.dart';
import 'package:flutter_example/types/auth_types.dart';
import '../../commons/constants/storage_key.dart';

class HomeScreenState extends State<HomeScreen> {
  late LoggingService _loggingService;
  HomeScreenState() {
    _loggingService = LoggingService();
    _loggingService.logInfo("Debug");
    AuthInfo authInfo = AuthInfo();
    authInfo.accessToken = "accessToken";
    authInfo.refreshToken = "refreshToken";
    authInfo.expiredTimespan = DateTime.now().millisecond;

    StorageService.save(StorageKeys.authInfo, authInfo);

    AuthInfo? authInfoInStorage =
        StorageService.get<AuthInfo>(AuthInfo.new, StorageKeys.authInfo);
    if (authInfoInStorage != null) {
      _loggingService.logInfo(authInfoInStorage);
    }
  }

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
