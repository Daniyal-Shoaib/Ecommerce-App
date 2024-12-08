import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';

import 'package:flutter/material.dart';

class SelectSize extends StatefulWidget {
  const SelectSize({super.key});

  @override
  State<SelectSize> createState() => _SelectSizeState();
}

class _SelectSizeState extends State<SelectSize> {
  final List<String> imageUrls = [
    // Replace these with your image URLs or asset paths
    AppImagesPath.sizeGirl,
    AppImagesPath.sizeGirl,
    AppImagesPath.sizeGirl,
  ];
  int selectedRating = 3;
  int selectedIndex = -1;
  bool indexValue = true;
  List<String> newSizeModel = ['XS', 'S', 'M', 'L', 'XL'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: ForgetCustom(
          text: 'Short Dress',
          fontSize: 20
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.share),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 275,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ), //SizedBox(height: 280,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    width: 85,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    width: 138,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4, right: 4),
                          child: ForgetCustom(text: 'Size'),
                        ),
                        GestureDetector(
                            onTap: (){
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
                                                // Navigator.push(
                                                //     context,
                                                //     MaterialPageRoute(
                                                //       builder: (context)=>FavouriteModule(),
                                                //     )
                                                // );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  fixedSize: const Size(343, 48),
                                                  backgroundColor: Colors.red,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(35))),
                                              child: const Text(
                                                "ADD TO Cart",
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
                            child: Icon(Icons.arrow_drop_down_outlined),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 138,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4, right: 4),
                          child: ForgetCustom(text: 'Black'),
                        ),
                        Icon(Icons.arrow_drop_down_outlined)
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: Colors.white,

                        shape: BoxShape.circle),
                    child: Center(
                      child: GestureDetector(
                        onTap: (){

                          setState(() {
                            indexValue=!indexValue;
                          });
                        },
                        child: Icon(Icons.favorite_border,color: indexValue==true ? Colors.red:Colors.black,),
                      ),
                    )
                  ),



                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "H&M",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Short black dress",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          Icon(Icons.star_border, color: Colors.grey, size: 16),
                          SizedBox(width: 4),
                          Text(
                            "(10)",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "\$19.99",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 343,
              height: 105,
              child: Column(
                children: [
                  Text("Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.")
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ForgetCustom(text: 'Item Details',fontSize: 16,),
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

          ],
        ),
      ),
    );
  }
}
