import 'dart:convert';
import 'dart:io';

class Article {
  int id;
  String title;
  String body;

  Article(this.id, this.title, this.body);
}

class ArticleDatabase {
  // Singleton instance of the database
  static final ArticleDatabase _instance =
      ArticleDatabase._privateConstructor();

  // Private constructor
  ArticleDatabase._privateConstructor();

  // List of articles in the database
  List<Article> _articles = [];

  // Get the singleton instance of the database
  static ArticleDatabase get instance => _instance;

  // Initialize the database with data from a file
  void init(String filePath) {
    String jsonData = File(filePath).readAsStringSync();
    List data = jsonDecode(jsonData);
    _articles = data
        .map((item) => Article(item['id'], item['title'], item['body']))
        .toList();
  }

  // Add a new article to the database
  void addArticle(Article article) {
    _articles.add(article);
  }

  // Delete an article from the database
  void deleteArticle(int id) {
    _articles.removeWhere((article) => article.id == id);
  }

  // List all articles in the database
  List<Article> listArticles() => _articles;

  // Get an article by its id
  Article getArticleById(int id) =>
      _articles.firstWhere((article) => article.id == id, orElse: () => null);
}

void main() {
  // Initialize the database with data from a file
  ArticleDatabase.instance.init('data.json');

  // Add a new article to the database
  ArticleDatabase.instance
      .addArticle(Article(4, 'New article', 'This is a new article'));

  // List all articles in the database
  ArticleDatabase.instance
      .listArticles()
      .forEach((article) => print(article.title));

  // Get an article by its id
  Article article = ArticleDatabase.instance.getArticleById(2);
  print(article.body);
}
