

import 'package:flutter/material.dart';
import 'package:flutter_push_notifications/src/pages/home_page.dart';
import 'package:flutter_push_notifications/src/pages/message_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'message': (BuildContext context) => MessagePage()
  };
}