import 'package:flutter/material.dart';
import 'package:flutter_news_app_c7_alex/api_manges.dart';
import 'package:flutter_news_app_c7_alex/home/news/news_item.dart';
import 'package:flutter_news_app_c7_alex/model/NewsResponse.dart';
import 'package:flutter_news_app_c7_alex/model/SourcesResponse.dart';
import 'package:flutter_news_app_c7_alex/my_theme.dart';

class NewsContainer extends StatelessWidget {
  Source source;
  NewsContainer({required this.source});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: ApiManger.getNews(source.id ?? ''),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              color: MyTheme.primaryLightColor,
            ));
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text('Something went wrong'),
                ElevatedButton(onPressed: () {}, child: Text('Try again'))
              ],
            );
          }
          if (snapshot.data?.status != 'ok') {
            // server => message , error
            return Column(
              children: [
                Text(snapshot.data?.message ?? ''),
                ElevatedButton(onPressed: () {}, child: Text('Try again'))
              ],
            );
          }

          /// data
          var newsList = snapshot.data?.articles ?? [];
          return ListView.builder(
            itemBuilder: (context, index) {
              return NewsItem(news: newsList[index]);
            },
            itemCount: newsList.length,
          );
        });
  }
}
