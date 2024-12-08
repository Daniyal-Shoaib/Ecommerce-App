import 'package:ecommerce_app/views/favorites/fabModel.dart';

class NewItemModel {
  final String name; // Name of the product
  final String brand; // Brand of the product (e.g., OVS, Mango Boy)
  final String imgPath; // Image path for the product
  final double price; // Price of the product
  final String isNew; // Whether the product is labeled as "NEW"
   bool isFab;// Whether the product is marked as favorite
  final int rating;
  NewItemModel({
    required this.name,
    required this.brand,
    required this.imgPath,
    required this.price,
    required this.isNew ,
    this.isFab = false,
    required this.rating

  });
}
class NewSizeModel{
  final String sizeText;

  NewSizeModel({required this.sizeText,});

}
class FabModel {
  final String name;

  FabModel({
    required this.name,

  });
}

