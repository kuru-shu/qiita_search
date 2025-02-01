import 'package:qiita_search/models/user.dart';

class Article {
  final String title;
  final User user;
  final int likesCount;
  final List<String> tags;
  final DateTime createdAt;
  final String url;

  Article({
    required this.title,
    required this.user,
    this.likesCount = 0,
    this.tags = const [],
    required this.createdAt,
    required this.url,
  });

  factory Article.fromJson(dynamic json) {
    return Article(
        title: json['title'] as String,
        user: User.fromJson(json['user']),
        likesCount: json['likes_count'] as int,
        tags: List<String>.from(json['tags'].map((tag) => tag['name'])),
        createdAt: DateTime.parse(json['created_at'] as String),
        url: json['url'] as String);
  }
}
