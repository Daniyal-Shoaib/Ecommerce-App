import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/catlog/list_directory/list_model.dart';

import 'package:flutter/material.dart';

class ListItemClass extends StatefulWidget {
  const ListItemClass({super.key});

  @override
  State<ListItemClass> createState() => _ListItemClassState();
}

class _ListItemClassState extends State<ListItemClass> {
  List<ListProductModel> products = [
    ListProductModel(
      title: 'Pullover',
      brand: 'Mango',
      price: "51\$",
      imageUrl: AppImagesPath.pullover,
      rating: 3.0,
      reviews: 3,
      isFavorite: false,
    ),
    ListProductModel(
      title: 'Blouse',
      brand: 'Dorothy Perkins',
      price: "34\$",
      imageUrl: AppImagesPath.blouse,
      rating: 0.0,
      reviews: 0,
      isFavorite: false,
    ),
    ListProductModel(
      title: 'T-shirt',
      brand: 'LOST Ink',
      price: "12\$",
      imageUrl: AppImagesPath.t_shirt,
      rating: 4.5,
      reviews: 10,
      isFavorite: true,
    ),
    ListProductModel(
      title: 'Shirt',
      brand: 'Top-shop',
      price: "51\$",
      imageUrl: AppImagesPath.shirt,
      rating: 0.0,
      reviews: 0,
      isFavorite: false,
    ),
    ListProductModel(
      title: 'T-shirt',
      brand: 'LOST Ink',
      price: "12\$",
      imageUrl: AppImagesPath.t_shirt,
      rating: 4.5,
      reviews: 10,
      isFavorite: true,
    ),
  ];

  void toggleFavorite(int index) {
    setState(() {
      products[index].isFavorite = !products[index].isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];

          return Row(
            children: [
              // Product Image
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 8, bottom: 25),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Image(
                    image: AssetImage(item.imageUrl),
                  ),
                ),
              ),
              // Product Details with Favorite Icon
              Padding(
                padding: const EdgeInsets.only(top: 7, bottom: 25),
                child: Stack(
                  children: [
                    Container(
                      width: 246,
                      height: 110,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ForgetCustom(
                              text: item.title,
                              fontSize: 16,
                              color: const Color(0xff222222),
                            ),
                            ForgetCustom(
                              text: item.brand,
                              fontSize: 11,
                              color: const Color(0xff9B9B9B),
                            ),
                            Row(
                              children: [
                                // Display the rating stars
                                Row(
                                  children: List.generate(
                                    5,
                                        (starIndex) {
                                      return Icon(
                                        Icons.star,
                                        color: starIndex < item.rating.round()
                                            ? Colors.orange
                                            : Colors.grey,
                                        size: 16,
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(width: 4),
                                // Display the review count
                                Text(
                                  '(${item.reviews} reviews)',
                                  style: const TextStyle(
                                    fontSize: 11,
                                    color: Color(0xff9B9B9B),
                                  ),
                                ),
                              ],
                            ),
                            ForgetCustom(
                              text: item.price,
                              fontSize: 14,
                              color: AppColors.blackColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Favorite Icon
                    Positioned(
                      right: 2,
                      bottom: -8,
                      child: CircleAvatar(
                        backgroundColor: Colors.white60,
                        radius: 18,
                        child: IconButton(
                          onPressed: () {
                            toggleFavorite(index);
                          },
                          icon: Icon(
                            products[index].isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            size: 18,
                            color: products[index].isFavorite
                                ? Colors.red
                                : Colors.black12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
