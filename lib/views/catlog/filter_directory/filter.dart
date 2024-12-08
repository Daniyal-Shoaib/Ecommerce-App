import 'package:ecommerce_app/views/catlog/filter_directory/filter_list.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues _priceRange = const RangeValues(78, 143);
  List<Color> colors = [Colors.black, Colors.red, Colors.white, Colors.grey, Colors.orange, Colors.blue];
  List<String> sizes = ["XS", "S", "M", "L", "XL"];
  List<String> categories = ["All", "Women", "Men", "Boys", "Girls"];
  String selectedSize = "M";
  String selectedCategories = "All";
  int selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Price range",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$${_priceRange.start.round()}"),
                Text("\$${_priceRange.end.round()}"),
              ],
            ),
            RangeSlider(
              values: _priceRange,
              min: 0,
              max: 200,

              activeColor: Colors.red,
              inactiveColor: Colors.grey.shade300,
              onChanged: (values) {
                setState(() {
                  _priceRange = values;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Colors",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: List.generate(colors.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColorIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colors[index],
                      border: Border.all(
                        color: selectedColorIndex == index ? Colors.red : Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            const Text(
              "Sizes",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              children: sizes.map((size) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = size;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selectedSize == size ? Colors.red : Colors.white,
                      border: Border.all(
                        color: selectedSize == size ? Colors.red : Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      size,
                      style: TextStyle(
                        color: selectedSize == size ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            const Text(
              "Category",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 20,
              runSpacing: 10,

              children: categories.map(
                  (cat){
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedCategories=cat;
                        });
                      },
                      child: Container(
                        width:100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: selectedCategories==cat ? Colors.red : Colors.white,
                          border: Border.all(
                            color: selectedCategories==cat ? Colors.transparent : Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(
                            10
                          )
                        ),
                        child: Center(
                          child: Text(
                            cat,
                            style: TextStyle(
                              color: selectedCategories==cat ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ).toList()
            ),
            const SizedBox(height: 80),
          const   Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            const Text(
              "Brand",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Text(
                  "adidas Originals, Jack & Jones, s.Oliver",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
               const  SizedBox(width: 55,),
                IconButton(
                    onPressed:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)=>const FilterList(),
                          )
                      );
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded,size: 15,)
                )
              ],
            ),
            const   Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            const SizedBox(height: 10),
            Container(
              width: 375,
              height: 104,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 160,
                      height: 36,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.black
                              ),
                            )
                          ),
                          child: const Text(
                            "Discard",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),
                          )),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: 160,
                      height: 36,
                      child: ElevatedButton(

                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Colors.transparent
                              ),
                            )
                          ),
                          child: const Text(
                            "Apply",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
