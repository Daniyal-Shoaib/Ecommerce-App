class ProductModelTwo {
  final String imagePath;
  final String brand;
  final String name;
  final double originalPrice;
  final double discountedPrice;
  final int discountPercentage;
  final double rating;
  final int reviewCount;
   bool isWishlisted;

  ProductModelTwo({
    required this.imagePath,
    required this.brand,
    required this.name,
    required this.originalPrice,
    required this.discountedPrice,
    required this.discountPercentage,
    required this.rating,
    required this.reviewCount,
    this.isWishlisted = false,
  });
}
