import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/categories/categories_two.dart';
import 'package:ecommerce_app/views/categories/category_model.dart';
import 'package:flutter/material.dart';

class CategoriesZero extends StatefulWidget {
  const CategoriesZero({super.key});

  @override
  State<CategoriesZero> createState() => _CategoriesZeroState();
}

class _CategoriesZeroState extends State<CategoriesZero> {
  List<CategoryItem> categoryItem = [
    CategoryItem(name: 'Jacket', imgPath: AppImagesPath.saleOne),
    CategoryItem(name: 'Clothes', imgPath: AppImagesPath.saleTwo),
    CategoryItem(name: 'Shoes', imgPath: AppImagesPath.saleThree),
    CategoryItem(name: 'Accessories', imgPath: AppImagesPath.saleFour),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 22,
                left: 2,
              ),
              child: Container(
                width: 350,
                height: 105,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>const CategoriesTwo(),
                        )
                    );
                  },
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ForgetCustom(
                        text: 'SUMMER SALES',
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      ForgetCustom(
                        text: 'Up to 50% off',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  itemCount: categoryItem.length,
                  itemBuilder: (context, index) {
                    final item = categoryItem[index];
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 170,
                              height: 90,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  )),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 23, top: 39),
                                child: Text(
                                  item.name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        item.imgPath,
                                      )),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
