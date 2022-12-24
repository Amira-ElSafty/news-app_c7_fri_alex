import 'package:flutter/material.dart';
import 'package:flutter_news_app_c7_alex/model/NewsResponse.dart';
import 'package:flutter_news_app_c7_alex/my_theme.dart';

class NewsItem extends StatelessWidget {
  News news ;
  NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,   /// rounded
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Image.network(news.urlToImage ?? ''),
          ),
          SizedBox(height: 10,),
          Text(news.author ?? '',
            style: TextStyle(
              color: MyTheme.greyColor,
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
          ),
          SizedBox(height: 10,),

          Text(news.title ?? '',
            style: TextStyle(
                color: MyTheme.blackColor,
                fontSize: 15,
              fontWeight: FontWeight.w400
            ),
          ),
          SizedBox(height: 10,),

          Text(news.publishedAt ?? '',
            style: TextStyle(
                color: MyTheme.greyColor,
                fontSize: 15
            ),
            textAlign: TextAlign.end,
          ),

        ],
      ),
    );
  }
}
