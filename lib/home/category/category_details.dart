import 'package:flutter/material.dart';
import 'package:flutter_news_app_c7_alex/api_manges.dart';
import 'package:flutter_news_app_c7_alex/home/category/tab_container.dart';
import 'package:flutter_news_app_c7_alex/model/SourcesResponse.dart';
import 'package:flutter_news_app_c7_alex/model/category.dart';
import 'package:flutter_news_app_c7_alex/my_theme.dart';

class CategoryDetails extends StatelessWidget {
  Category category ;
  CategoryDetails({required this.category});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(
        future: ApiManger.getSources(category.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(
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
          // server got data
          var sourcesList = snapshot.data?.sources ?? [];
          return TabContainer(sourcesList: sourcesList);
        });
  }
}
