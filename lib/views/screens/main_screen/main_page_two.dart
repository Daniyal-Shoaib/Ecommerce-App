import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/model/data_collection_two.dart';
import 'main_page_three.dart';
import 'package:flutter/material.dart';

class MainPageTwo extends StatefulWidget {
  const MainPageTwo({super.key});

  @override
  State<MainPageTwo> createState() => _MainPageTwoState();
}

class _MainPageTwoState extends State<MainPageTwo> {
  late List<ProductModelTwo> products;

  @override
  void initState() {
    super.initState();
    products = [
      ProductModelTwo(
        imagePath: AppImagesPath.mainPageTwoEvening,
        brand: 'Dorothy Perkins',
        name: 'Evening Dress',
        originalPrice: 15.0,
        discountedPrice: 12.0,
        discountPercentage: 20,
        rating: 4.5,
        reviewCount: 10,
        isWishlisted: false,
      ),
      ProductModelTwo(
        imagePath: AppImagesPath.mainPageTwoEve,
        brand: 'Stilly',
        name: 'Sleep Dress',
        originalPrice: 22.0,
        discountedPrice: 19.0,
        discountPercentage: 15,
        rating: 4.0,
        reviewCount: 10,
        isWishlisted: false,
      ),
      ProductModelTwo(
        imagePath: AppImagesPath.mainPageGirlThree,
        brand: 'Dorothy Perkins',
        name: 'Party Dress',
        originalPrice: 15.0,
        discountedPrice: 12.0,
        discountPercentage: 20,
        rating: 4.5,
        reviewCount: 10,
        isWishlisted: false,
      ),
      ProductModelTwo(
        imagePath: AppImagesPath.girlStyle2,
        brand: 'Stilly',
        name: 'Sport Dress',
        originalPrice: 22.0,
        discountedPrice: 19.0,
        discountPercentage: 15,
        rating: 4.0,
        reviewCount: 10,
        isWishlisted: false,
      ),
      // Add more items if needed
    ];
  }

  void toggleFavorite(int index) {
    setState(() {
      products[index].isWishlisted = !products[index].isWishlisted;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    AppImagesPath appImagesPath = AppImagesPath();

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  height: screenHeight * 0.28,
                  width: screenWidth,
                  image: AssetImage(appImagesPath.mainPageTwoGirlOne),
                  fit: BoxFit.fill,
                ),
                const Positioned(
                  left: 20,
                  bottom: 35,
                  child: Text(
                    "Street clothes",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 34,
                      fontFamily: 'MetroPolies',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0)
                      .copyWith(bottom: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Sale",
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context)=>MainPageThree())
                             );
                            },
                            child: const Text(
                              "View all",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Text(
                          "Super summer sale",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: products.length,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.6, // Adjusted aspect ratio
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.15),
                                            blurRadius: 8,
                                            offset: const Offset(0, 4),
                                          ),
                                        ],
                                        image: DecorationImage(
                                          image: AssetImage(
                                              products[index].imagePath),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 8,
                                      left: (products.length == 2 || products.length == 3) ? 8 : 1,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                          BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          '-${products[index].discountPercentage}%',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -10, // Move the heart icon slightly down to overlap with the card
                                      right: -0.8,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 18,
                                        child: IconButton(
                                          onPressed: () {
                                            toggleFavorite(index);
                                          },
                                          icon: Icon(
                                            products[index].isWishlisted
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            size: 18,
                                            color: products[index].isWishlisted
                                                ? Colors.red
                                                : Colors.black12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    //spread operator
                                    ...List.generate(5, (starIndex) {
                                      return Icon(
                                        Icons.star,
                                        color: starIndex < products[index].rating
                                            ? Colors.amber
                                            : Colors.grey,
                                        size: 16,
                                      );
                                    }),
                                    const SizedBox(width: 4),
                                    Text(
                                      '(${products[index].reviewCount})',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  products[index].brand,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  products[index].name,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      '\$${products[index].discountedPrice}',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '\$${products[index].originalPrice}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
