
class Article{

  String? author;
  String? title;
  String? description;
  String? url;
  String? imageUrl;
  String? publishDate;
  String? content;

  Article({this.author, this.title, this.description, this.url, this.imageUrl,
      this.publishDate, this.content});

  factory Article.fromJson(Map<String, dynamic> jsonData){
    return Article(
        author: jsonData['author'],
        title: jsonData['title'],
        description:jsonData['description'],
        url: jsonData['url'],
        imageUrl: jsonData['urlToImage'],
        publishDate: jsonData['publishedAt'],
        content: jsonData['content']);
  }

}

