class Post {
  const Post({
    required this.title,
    required this.author,
    required this.imageUrl
});

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(title: 'Candy Shop', author: 'Mohamed Chahin', imageUrl: 'https://c-ssl.duitang.com/uploads/item/201905/28/20190528143150_fETNW.thumb.1000_0.jpeg'),
  Post(title: 'Candy Shop', author: 'Mohamed Chahin', imageUrl: 'https://c-ssl.duitang.com/uploads/item/201905/28/20190528143150_fETNW.thumb.1000_0.jpeg'),
  Post(title: 'Candy Shop', author: 'Mohamed Chahin', imageUrl: 'https://c-ssl.duitang.com/uploads/item/201905/28/20190528143150_fETNW.thumb.1000_0.jpeg')
];