import 'package:flutter/material.dart';
import 'package:flutter_news_app_c7_alex/home/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName :(context) => HomeScreen(),
      },
    );
  }
}
