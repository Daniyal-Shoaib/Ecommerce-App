import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/model/data_collection.dart';
import 'package:ecommerce_app/views/screens/main_screen/main_page_two.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/custom_widget/new_label.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    AppImagesPath appImagesPath = AppImagesPath();
    List<Product> products = [
      Product(imagePath: appImagesPath.girlStyle, name: 'Girl Dress'),
      Product(imagePath: appImagesPath.menStyleImage, name: 'White Shirt'),
      Product(imagePath: appImagesPath.girlStyle, name: 'Green Shirt'),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(
                  height: screenHeight * 0.68,
                  width: screenWidth,
                  image: AssetImage(appImagesPath.bigBanner),
                  fit: BoxFit.fill,
                ),
                const Positioned(
                  left: 30,
                  bottom: 95,
                  child: Text(
                    "Fashion\nsale",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 40,
                      fontFamily: 'MetroPolies',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  bottom: 40,
                  child: SizedBox(
                    width: screenWidth * 0.40,
                    height: screenHeight * 0.05,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPageTwo(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.redColor,
                      ),
                      child: const Text(
                        'Check',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 14,
                          fontFamily: 'MetroPolies',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "New",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // View All action
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
                  const Text(
                    "You've never seen it before!",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 170,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(products[index].imagePath),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              child: NewLabel(),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          products[index].name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
