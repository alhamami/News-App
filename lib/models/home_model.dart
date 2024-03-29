import 'package:intl/intl.dart';

class HomeModel {
  HomeModel(
      {this.newsImageUrl,
      this.newsTitle,
      this.publishedTime,
      this.newsCategory,
      this.newsDescription,
      this.newsSource});
  String? newsImageUrl;
  String? newsTitle;
  String? publishedTime;
  String? newsDescription;
  String? newsCategory;
  String? newsSource;

  HomeModel.fromJson(Map<String, dynamic> json) {
    newsImageUrl = json['urlToImage'];
    newsTitle = json['title'];
    publishedTime = json['publishedAt'];
    newsCategory = "Not Found";
    newsDescription = json['description'];
    newsSource = json['source']['name'];
  }

  Map<String, dynamic> toJSON() {
    return {
      "newsImageUrl": newsImageUrl,
      "newsTitle": newsTitle,
      "publishedTime": publishedTime
    };
  }

  final String todayDate =
      'Today, ' + DateFormat('MMMM dd').format(DateTime.now()) + 'rd';

  final String treadingHeadLine = "Trending";
  final String latestHeadLine = "Latest";

  List<String> categories = [
    'All',
    'business',
    'entertainment',
    'general',
    'health',
    'science',
    'sports',
    'technology'
  ];

  final List<Map<String, String>> trendingNews = [
    {
      "newsImageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA18CE5g.img?w=1920&h=1080&q=60&m=2&f=jpg",
      "newsTitle":
          "Al-Nassr announce arrival of Portuguese manager for Ronaldo",
      "newsaCategory": "Football"
    },
    {
      "newsImageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dtSFG.img?w=800&h=415&q=60&m=2&f=jpg",
      "newsTitle": "The most iconic cars in cinematic and television history",
      "newsCategory": "Cars"
    },
    {
      "newsImageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dtSFG.img?w=800&h=415&q=60&m=2&f=jpg",
      "newsTitle": "10 Animals People Wish Were Pet Material But Sadly Aren't",
      "newsaCategory": "Animals"
    }
  ];

  // final List<Map<String, String>> latestNews = [
  //   {
  //     "newsImageUrl":
  //         "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA18CE5g.img?w=1920&h=1080&q=60&m=2&f=jpg",
  //     "newsTitle":
  //         "Al-Nassr announce arrival of Portuguese manager for Ronaldo",
  //     "newsCategory": "Football",
  //     "time": "14h ago"
  //   },
  //   {
  //     "newsImageUrl":
  //         "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dtSFG.img?w=800&h=415&q=60&m=2&f=jpg",
  //     "newsTitle": "The most iconic cars in cinematic and television history",
  //     "newsCategory": "Cars",
  //     "time": "12h ago"
  //   },
  //   {
  //     "newsImageUrl":
  //         "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dtSFG.img?w=800&h=415&q=60&m=2&f=jpg",
  //     "newsTitle": "10 Animals People Wish Were Pet Material But Sadly Aren't",
  //     "newsCategory": "Animals",
  //     "time": "10h ago"
  //   }
  // ];
}
