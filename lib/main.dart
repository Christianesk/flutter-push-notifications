import 'package:flutter/material.dart';
import 'package:flutter_push_notifications/src/providers/push_notifications_provider.dart';
import 'package:flutter_push_notifications/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();

    final pushNotificationsProvider = new PushNotificationsProvider();

    pushNotificationsProvider.initNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: getApplicationRoutes()
    );
  }
}