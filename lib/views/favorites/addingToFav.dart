import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/custom_widget/new_label.dart';
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/views/favorites/favourite_module.dart';
import 'package:flutter/material.dart';

class AddingToFav extends StatefulWidget {
  const AddingToFav({super.key});

  @override
  State<AddingToFav> createState() => _AddingToFavState();
}

class _AddingToFavState extends State<AddingToFav> {
  int selectedRating = 3;
  int selectedIndex = -1; // Use this to track selected chip index

  List<Map<String, dynamic>> newItemModel = [
    {
      'name': "OVS",
      'brand': "Blouse",
      'imgPath': AppImagesPath.girlStyle2,
      'price': 30,
      'isFab': true,
      'isNew': "New",
      'rating': 0,
    },
    {
      'name': "Mango Boy",
      'brand': "T-Shirt Sailing",
      'imgPath': AppImagesPath.whiteShirt,
      'price': 10,
      'isFab': true,
      'isNew': "New",
      'rating': 1,
    },
    {
      'name': "OVS",
      'brand': "Jeans",
      'imgPath': AppImagesPath.t_shirt,
      'price': 90,
      'isFab': true,
      'isNew': "New",
      'rating': 0,
    },
  ];

  List<String> newSizeModel = ['XS', 'S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Image(
              height: screenHeight * 0.28,
              width: screenWidth,
              image: AssetImage(AppImagesPath.addingFav),
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ForgetCustom(
                    text: 'New',
                    fontSize: 34,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You’ve never seen it before!",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: newItemModel.length,
                itemBuilder: (context, index) {
                  var item = newItemModel[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 148,
                          height: 184,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(item['imgPath']),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4, top: 5),
                                child: GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          width: 375,
                                          height: 368,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 5),
                                              Container(
                                                width: 60,
                                                height: 6,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xff979797),
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              ForgetCustom(
                                                text: 'Select size',
                                                fontSize: 18,
                                              ),
                                              SizedBox(height: 10),
                                              Wrap(
                                                spacing: 16,
                                                children: List.generate(
                                                  newSizeModel.length,
                                                      (sizeIndex) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          selectedIndex = sizeIndex; // Set the selected index
                                                        });
                                                      },
                                                      child: Chip(
                                                        padding: EdgeInsets.symmetric(horizontal: 32),
                                                        label: Text(
                                                          newSizeModel[sizeIndex],
                                                          style: TextStyle(color: Colors.black),
                                                        ),
                                                        backgroundColor: selectedIndex == sizeIndex
                                                            ? Colors.red
                                                            : Colors.white, // Change color based on selection
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              Divider(
                                                color: Colors.grey.shade300,
                                              ),
                                              SizedBox(height: 10),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 33,right: 10),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    ForgetCustom(text: 'Size info',fontSize: 16,),
                                                    GestureDetector(
                                                      onTap: (){},
                                                        child: Icon(Icons.arrow_forward_ios,size: 20,)),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Divider(
                                                color: Colors.grey.shade300,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 60),
                                                child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context)=>FavouriteModule(),
                                                          )
                                                      );
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        fixedSize: const Size(343, 48),
                                                        backgroundColor: Colors.red,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(35))),
                                                    child: const Text(
                                                      "ADD TO FAVORITES",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(10),
                                        top: Radius.circular(10),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        item['isNew'],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 67, top: 150),
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: item['isFab'] ? Colors.red : Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        item['isFab'] = !item['isFab'];
                                      });
                                    },
                                    child: item['isFab']
                                        ? Icon(Icons.favorite, color: Colors.white)
                                        : Icon(Icons.favorite_border),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                    (starIndex) {
                                  return GestureDetector(
                                    onTap: () {
                                      selectedRating = starIndex + 1;
                                      setState(() {});
                                    },
                                    child: Icon(
                                      starIndex < selectedRating ? Icons.star : Icons.star_border,
                                      color: Colors.amber,
                                      size: 25,
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 5),
                            Text("(${item['rating']})"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4, top: 2),
                          child: Text(
                            item['name'],
                            style: TextStyle(color: Color(0xff9B9B9B)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4, top: 2),
                          child: ForgetCustom(text: item['brand'], fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4, top: 2),
                          child: ForgetCustom(text: '${item['price'].toInt()}\$', fontSize: 14),
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
