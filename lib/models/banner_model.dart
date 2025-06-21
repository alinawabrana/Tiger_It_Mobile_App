class BannerModel {
  final String title;
  final String imageUrl;

  BannerModel({required this.title, required this.imageUrl});

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    if (json.isNotEmpty) {
      return BannerModel(title: json['title'], imageUrl: json['image_url']);
    }
    return BannerModel(title: '', imageUrl: '');
  }
}
