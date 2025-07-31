class Link {
  final String url;
  final String shortenedUrl;
  final String title;
  final String description;

  Link({
    required this.url,
    required this.shortenedUrl,
    required this.title,
    required this.description,
  });

  @override
  String toString() {
    return 'Link(url: $url, title: $title, description: $description)';
  }

  String get displayTitle {
    return title.isNotEmpty ? title : 'No Title';
  }

  String get displayDescription {
    return description.isNotEmpty ? description : 'No Description';
  }

  String get displayUrl {
    return url.isNotEmpty ? url : 'No URL';
  }

  String get displayShortenedUrl {
    return shortenedUrl.isNotEmpty ? shortenedUrl : 'No Shortened URL';
  }
}
