import 'package:flutter/material.dart';
import 'package:flutter_news_app_c7_alex/home/category/category_details.dart';
import 'package:flutter_news_app_c7_alex/home/category/category_fragment.dart';
import 'package:flutter_news_app_c7_alex/home/home_drawer.dart';
import 'package:flutter_news_app_c7_alex/home/setting/setting_tab.dart';
import 'package:flutter_news_app_c7_alex/model/category.dart';
import 'package:flutter_news_app_c7_alex/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyTheme.whiteColor,
        image: DecorationImage(
          image: AssetImage('assets/images/main_background.png',
          ),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
          child:
          HomeDrawer(onDrawerItemClicked: onDrawerItemClicked),
        ),
        body: selectedItemDrawer == HomeDrawer.setting?
            SettingTab():
        selectedCategory==null ?
        CategoryFragment(onCategoryItemClicked: onCategoryItemClicked):
        CategoryDetails(category: selectedCategory!),
      ),
    );
  }

  Category? selectedCategory = null ;


  void onCategoryItemClicked(Category category){
    selectedCategory = category ;
    setState(() {

    });
  }


  var selectedItemDrawer = HomeDrawer.categories;
  void onDrawerItemClicked(int selectedItem){
    selectedItemDrawer = selectedItem ;
    Navigator.pop(context);
    selectedCategory = null ;
    setState(() {

    });
  }
}
