import 'package:flutter/material.dart';
import 'package:flutter_news_app_c7_alex/home/category/category_screen.dart';
import 'package:flutter_news_app_c7_alex/home/home_drawer.dart';
import 'package:flutter_news_app_c7_alex/my_theme.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35)
          )
        ),
        title: Text('News App',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: HomeDrawer(),
      ),
      body: CategoryScreen(),
    );
  }
}
