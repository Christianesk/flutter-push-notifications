import 'package:flutter/material.dart';
import 'package:flutter_push_notifications/src/providers/push_notifications_provider.dart';
import 'package:flutter_push_notifications/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();

    final pushNotificationsProvider = new PushNotificationsProvider();

    pushNotificationsProvider.initNotifications();

    pushNotificationsProvider.messageStream.listen((data) { 
      // print('args from main: $data');
      navigatorKey.currentState.pushNamed('message', arguments: data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: getApplicationRoutes()
    );
  }
}