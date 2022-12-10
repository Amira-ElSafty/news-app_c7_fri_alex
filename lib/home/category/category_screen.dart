import 'package:flutter/material.dart';
import 'package:flutter_news_app_c7_alex/home/category/category_item.dart';

class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        children: [
          Text('Pick your category\n of interest',
            style:Theme.of(context).textTheme.headline2
          ),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 18,
                crossAxisSpacing: 18
              ),
              itemBuilder: (context,index){
                return CategoryItem();
              },
            itemCount: 8,
          )
        ],
      ),
    );
  }
}
