class ProductGrid {
  final String title;
  final String brand;
  final double price;
  final double? originalPrice;
  final String imageUrl;
  final double rating;
  final int reviews;
   bool isFavorite;
  final bool hasDiscount;

  ProductGrid({
    required this.title,
    required this.brand,
    required this.price,
    this.originalPrice,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
    this.isFavorite = false,
    this.hasDiscount = false,
  });
}

