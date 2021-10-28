import 'package:dicoding_news_app/article_webview.dart';
import 'package:flutter/material.dart';

import 'article.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final Article article;
  const ArticleDetailPage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(article.urlToImage),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Column(
              children: [
                Text(
                  article.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Text('Date: ${article.publishedAt}'),
                const SizedBox(
                  height: 10,
                ),
                Text('Author: ${article.publishedAt}'),
                const Divider(
                  color: Colors.grey,
                ),
                Text(
                  article.content,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(
                context,
                ArticleWebView.routeName,
                arguments: article.url,
              ),
              child: const Text('Read more..'),
            ),
          ],
        ),
      ),
    );
  }
}
