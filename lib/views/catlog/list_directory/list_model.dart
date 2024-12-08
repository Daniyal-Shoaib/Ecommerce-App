class ListProductModel{
  final String title;
  final String brand;
  final String price;
  final String imageUrl;
  final double rating;
  final int reviews;
  bool isFavorite;
  ListProductModel( {
    required this.title,
    required this.brand,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
    required this.isFavorite
});
}