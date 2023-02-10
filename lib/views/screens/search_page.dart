import 'package:flutter/material.dart';
import 'package:news_app/helpers/news_helper.dart';
import 'package:news_app/providers/news_provider.dart';
import 'package:provider/provider.dart';

import '../../providers/connection_provider.dart';
import '../../providers/theme_provider.dart';
import '../component/news_container.dart';
import '../component/no_internet.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search News"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).changeTheme();
            },
            icon: Icon(
              (Provider.of<ThemeProvider>(context).isDark)
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.home),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              autofocus: true,
              onChanged: (val) async {
                await NewsHelper.newsHelper
                    .searchNews(search: val, context: context);
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(5),
                prefixIcon: const Icon(Icons.search),
                label: const Text("Search"),
                hintText: "Search News hear",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          (Provider.of<ConnectionProvide>(context).isOffline)
              ? Expanded(child: noInternet(context: context))
              : (Provider.of<NewsProvider>(context).searchList.isNotEmpty)
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: Provider.of<NewsProvider>(context)
                            .searchList
                            .length,
                        itemBuilder: (context, i) {
                          return newsContainer(
                              news: Provider.of<NewsProvider>(context)
                                  .searchList[i],
                              context: context);
                        },
                      ),
                    )
                  : Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.search,
                            size: 40,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Search News",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
        ],
      ),
    );
  }
}
