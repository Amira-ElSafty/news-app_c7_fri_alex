import 'package:flutter/material.dart';
import 'package:flutter_news_app_c7_alex/my_theme.dart';

class HomeDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: MyTheme.primaryLightColor,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 64),
            child: Expanded(
              child: Center(
                child: Text('News App!',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                // categories
              },
              child: Row(
                children: [
                  Icon(Icons.list),
                  SizedBox(width: 10,),
                  Text('Categories',
                    style: Theme.of(context).textTheme.headline2,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                // settings
              },
              child: Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 10,),
                  Text('Settings',
                    style: Theme.of(context).textTheme.headline2,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
