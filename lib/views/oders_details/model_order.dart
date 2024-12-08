class ModelOrder {
  final String orderNumber;
  final String date;
  final String trackNumber;
  final int quantity;
  final int totalAmount;

  ModelOrder(
      {required this.orderNumber,
      required this.date,
      required this.trackNumber,
      required this.quantity,
      required this.totalAmount});
}
class ProductItem {
  final String name;       // Name of the product
  final String brand;      // Brand or manufacturer
  final String color;      // Color of the product
  final String size;       // Size (e.g., L, M, etc.)
  final int units;         // Number of units
  final double price;      // Price of the product

  ProductItem({
    required this.name,
    required this.brand,
    required this.color,
    required this.size,
    required this.units,
    required this.price,
  });
}
