import 'package:dio/dio.dart';
import 'package:news_app/modals/news_modal.dart';
import 'package:provider/provider.dart';

import '../providers/news_provider.dart';

class NewsHelper {
  NewsHelper._();
  static final NewsHelper newsHelper = NewsHelper._();
  Dio dio = Dio();
  Future<List<News>> getHeadLineNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=YOUR_API_KEY");
    List data = response.data["articles"];

    List<News> newsList = data.map((e) => News.fromMap(data: e)).toList();

    return newsList;
  }

  Future<List<News>> getNewsCategoryWise({required String category}) async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?category=$category&apiKey=YOUR_API_KEY");
    List data = response.data["articles"];

    List<News> newsList = data.map((e) => News.fromMap(data: e)).toList();

    return newsList;
  }

  searchNews({required String search, context}) async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?q=$search&apiKey=YOUR_API_KEY");
    List data = response.data["articles"];

    List<News> newsList = data.map((e) => News.fromMap(data: e)).toList();

    Provider.of<NewsProvider>(context, listen: false)
        .setSearchList(search: newsList);
  }
}
