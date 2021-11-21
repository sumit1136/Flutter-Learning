import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';
import 'package:provider_json/models/news_data.dart';
import 'package:provider_json/wigets/news_card.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<NewsData>().fetchData;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Stories - CBS News'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<NewsData>().initialValues();
              context.read<NewsData>().fetchData;
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<NewsData>().fetchData;
        },
        child: Center(
          child: Consumer<NewsData>(
            builder: (context, value, child) {
              return value.map.isEmpty && !value.error
                  ? const CircularProgressIndicator()
                  : value.error
                      ? Text(
                          'Oops, Something went wrong. ${value.errorMessage}',
                          textAlign: TextAlign.center,
                        )
                      : ListView.builder(
                          itemCount: value.map['stories'].length,
                          itemBuilder: (context, index) {
                            return NewsCard(
                              map: value.map['stories'][index],
                            );
                          },
                        );
            },
          ),
        ),
      ),
    );
  }
}
